/**
 * Clase Pose
 * Almacena y dibuja los 17 landmarks del cuerpo (formato PoseNet).
 */
class Pose {
  PVector[] points = new PVector[17];
  boolean detected = false;
  long lastUpdateTime = 0;
  
  Pose() {
    for (int i = 0; i < points.length; i++) {
      points[i] = new PVector(0, 0);
    }
  }

  // Parsea el mensaje OSC de la pose
  void parse(OscMessage msg) {
    if (!msg.typetag().startsWith("iiif")) {
      println("Error: Mensaje OSC para Pose con formato o typetag incorrecto.");
      println("Typetag recibido: " + msg.typetag());
      return;
    }

    int numPoses = msg.get(2).intValue();
    
    int expectedArgs = 3 + 1 + 17 * 3;
    if (numPoses > 0 && msg.arguments().length < expectedArgs) {
       println("Error: Mensaje OSC para Pose incompleto. Esperaba " + expectedArgs + " args, recibí " + msg.arguments().length);
       detected = false;
       return;
    }
       
    if (numPoses > 0) {
      int argIndex = 4;
      for (int i = 0; i < points.length; i++) {
        if (argIndex + 2 < msg.arguments().length) {
          float x = msg.get(argIndex).floatValue();
          float y = msg.get(argIndex + 1).floatValue();
          points[i].set(x, y);
          argIndex += 3;
        }
      }
      detected = true;
      lastUpdateTime = millis();
    }
  }

  // Dibuja los puntos y conexiones del cuerpo
  void draw() {
    if (!isDetected()) return;
    
    pushStyle();
    
    stroke(255, 0, 255, 180);
    strokeWeight(3);
    for (int[] conn : PoseConnections.CONNECTIONS) {
      int startIdx = conn[0];
      int endIdx = conn[1];
       if (startIdx < points.length && endIdx < points.length) {
          PVector p1 = points[startIdx];
          PVector p2 = points[endIdx];
          if(p1.x > 0 && p1.y > 0 && p2.x > 0 && p2.y > 0) {
            // FIX: Multiplica la coordenada normalizada (0-1) por el ancho/alto de la ventana
            line(p1.x * width, p1.y * height, p2.x * width, p2.y * height);
          }
       }
    }
    
    noStroke();
    fill(255, 255, 255);
    for (PVector p : points) {
       if (p.x > 0 && p.y > 0) {
        // FIX: Multiplica la coordenada normalizada (0-1) por el ancho/alto de la ventana
        ellipse(p.x * width, p.y * height, 10, 10);
      }
    }
    
    popStyle();
  }

  boolean isDetected() {
    if (millis() - lastUpdateTime > 1000) {
      detected = false;
    }
    return detected;
  }
}
