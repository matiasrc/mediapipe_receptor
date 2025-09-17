/**
 * Clase Face
 * Almacena y dibuja los 468 landmarks de la cara.
 */
class Face {
  PVector[] points = new PVector[468];
  boolean detected = false;
  long lastUpdateTime = 0;

  Face() {
    for (int i = 0; i < points.length; i++) {
      points[i] = new PVector(0, 0);
    }
  }

  // Parsea el mensaje OSC de la cara
  void parse(OscMessage msg) {
    if (!msg.typetag().startsWith("iiif")) {
      println("Error: Mensaje OSC para Face con formato o typetag incorrecto.");
      println("Typetag recibido: " + msg.typetag());
      return;
    }

    int numFaces = msg.get(2).intValue();
    
    int expectedArgs = 3 + 1 + 468 * 3;
    if (numFaces > 0 && msg.arguments().length < expectedArgs) {
        println("Error: Mensaje OSC para Face incompleto. Esperaba " + expectedArgs + " args, recibí " + msg.arguments().length);
        detected = false;
        return;
    }
      
    if (numFaces > 0) {
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

  // Dibuja los puntos y las conexiones
  void draw() {
    if (!isDetected()) return;

    pushStyle();
    
    // Dibuja las conexiones
    stroke(0, 180, 220, 150);
    strokeWeight(1.5);
    for (int[] conn : FaceConnections.CONNECTIONS) {
      int startIdx = conn[0];
      int endIdx = conn[1];
      if (startIdx < points.length && endIdx < points.length) {
        PVector p1 = points[startIdx];
        PVector p2 = points[endIdx];
        if (p1.x > 0 && p2.x > 0) {
          // FIX: Multiplica la coordenada normalizada (0-1) por el ancho/alto de la ventana
          line(p1.x * width, p1.y * height, p2.x * width, p2.y * height);
        }
      }
    }

    // Dibuja los puntos
    noStroke();
    fill(255, 255, 0); // Amarillo
    for (PVector p : points) {
       if (p.x > 0) {
        // FIX: Multiplica la coordenada normalizada (0-1) por el ancho/alto de la ventana
        ellipse(p.x * width, p.y * height, 5, 5);
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
