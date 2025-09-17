import oscP5.*;
import netP5.*;

OscP5 oscP5;
int port = 3333; // Puerto de escucha OSC (debe coincidir con config.json de Python)

// Instancias de nuestras clases para cada tipo de dato
Face face;
Hands hands;
Pose pose;

void setup() {
  size(1280, 720);
  
  // Configuración de OSC para recibir datos
  // Aumentamos el tamaño del buffer para manejar mensajes grandes (como el de la cara)
  OscProperties props = new OscProperties();
  props.setDatagramSize(8192); // Aumentar buffer a 8kB
  props.setListeningPort(port);
  oscP5 = new OscP5(this, props);

  println("### Receptor OSC Iniciado ###");
  println("Escuchando en el puerto: " + port);
  
  // Inicializamos los objetos
  face = new Face();
  hands = new Hands();
  pose = new Pose();
}

void draw() {
  background(20, 20, 30); // Fondo oscuro
  
  // Dibujar los datos de cada modelo si son detectados
  if (pose.isDetected()) {
    pose.draw();
  }
  if (hands.isDetected()) {
    hands.draw();
  }
  if (face.isDetected()) {
    face.draw();
  }

  // Muestra el estado en la esquina superior izquierda
  fill(255);
  textSize(16);
  textAlign(LEFT, TOP);
  text("Pose: " + (pose.isDetected() ? "Detectado" : "No Detectado"), 10, 10);
  text("Hands: " + (hands.isDetected() ? hands.getHandCount() + " Detectada(s)" : "No Detectado"), 10, 30);
  text("Face: " + (face.isDetected() ? "Detectado" : "No Detectado"), 10, 50);
}

/**
 * oscEvent se llama automáticamente cada vez que se recibe un mensaje OSC.
 * Aquí es donde distribuimos los mensajes a la clase correspondiente.
 */
void oscEvent(OscMessage theOscMessage) {
  //println("### Mensaje OSC Recibido ###");
  //println("Dirección: " + theOscMessage.addrPattern());
  //println("Typetag: " + theOscMessage.typetag());
  
  String addr = theOscMessage.addrPattern();
  
  if (addr.equals("/faces/arr")) {
    face.parse(theOscMessage);
  } else if (addr.equals("/hands/arr")) {
    hands.parse(theOscMessage);
  } else if (addr.equals("/poses/arr")) {
    pose.parse(theOscMessage);
  }
}
