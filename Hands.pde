/**
 * Clase Hands
 * Almacena y dibuja los landmarks de hasta 2 manos.
 */
class Hands {
  PVector[] leftHandPoints = new PVector[21];
  PVector[] rightHandPoints = new PVector[21];
  int handCount = 0;
  long lastUpdateTime = 0;

  Hands() {
    for (int i = 0; i < 21; i++) {
      leftHandPoints[i] = new PVector(0, 0);
      rightHandPoints[i] = new PVector(0, 0);
    }
  }

  // Parsea el mensaje OSC de las manos
  void parse(OscMessage msg) {
    if (!msg.typetag().startsWith("iiif")) {
      println("Error: Mensaje OSC para Hands con formato o typetag incorrecto.");
      println("Typetag recibido: " + msg.typetag());
      return;
    }
    
    int numHands = msg.get(2).intValue();
    
    int expectedArgs = 3 + numHands * (1 + 21 * 3);
    if (numHands > 0 && msg.arguments().length < expectedArgs) {
      println("Error: Mensaje OSC para Hands incompleto. Esperaba " + expectedArgs + " args, recibí " + msg.arguments().length);
      handCount = 0;
      return;
    }
    
    handCount = numHands;
    
    if (handCount > 0) {
      int argIndex = 3;
      for (int h = 0; h < handCount; h++) {
        argIndex++; // Saltar el score de la mano
        PVector[] currentHand = (h == 0) ? leftHandPoints : rightHandPoints;
        for (int i = 0; i < 21; i++) {
           if (argIndex + 2 < msg.arguments().length) {
             float x = msg.get(argIndex).floatValue();
             float y = msg.get(argIndex + 1).floatValue();
             currentHand[i].set(x, y);
             argIndex += 3;
           }
        }
      }
      lastUpdateTime = millis();
    }
  }

  // Dibuja los puntos y conexiones de las manos detectadas
  void draw() {
    if (!isDetected()) return;

    if (handCount >= 1) {
      drawHand(leftHandPoints);
    }
    if (handCount >= 2) {
      drawHand(rightHandPoints);
    }
  }

  private void drawHand(PVector[] handPoints) {
    pushStyle();
    
    stroke(0, 255, 0, 180);
    strokeWeight(2);
    for (int[] conn : HandConnections.CONNECTIONS) {
      int startIdx = conn[0];
      int endIdx = conn[1];
       if (startIdx < handPoints.length && endIdx < handPoints.length) {
          PVector p1 = handPoints[startIdx];
          PVector p2 = handPoints[endIdx];
          if (p1.x > 0 && p2.x > 0) {
            // FIX: Multiplica la coordenada normalizada (0-1) por el ancho/alto de la ventana
            line(p1.x * width, p1.y * height, p2.x * width, p2.y * height);
          }
       }
    }

    noStroke();
    fill(255, 0, 0);
    for (PVector p : handPoints) {
      if (p.x > 0) {
        // FIX: Multiplica la coordenada normalizada (0-1) por el ancho/alto de la ventana
        ellipse(p.x * width, p.y * height, 8, 8);
      }
    }
    
    popStyle();
  }

  boolean isDetected() {
    if (millis() - lastUpdateTime > 1000) {
      handCount = 0;
    }
    return handCount > 0;
  }
  
  int getHandCount() {
    return handCount;
  }
}
