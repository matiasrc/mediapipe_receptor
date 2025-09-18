MediaPipe OSC Receiver (Processing)
Este es un sketch de Processing diseñado para recibir y visualizar datos de landmarks corporales, faciales y de manos enviados desde la aplicación MediaPipe Tracker OSC a través del protocolo OSC.

El visualizador es compatible con los datos enviados por los modelos Face, Hands, Pose y Holistic.

Características
Recepción Multimodelo: Recibe y procesa datos de cara (468 puntos), manos (21 puntos por mano) y pose (17 puntos).

Visualización en Tiempo Real: Dibuja los puntos y las conexiones entre ellos en la pantalla, escalando las coordenadas al tamaño de la ventana.

Estructura Modular: El código está organizado en clases (Face, Hands, Pose) para una fácil comprensión y modificación.

Robustez: Incluye verificaciones de formato de mensaje para evitar errores si los datos llegan de forma inesperada.

Requisitos
Processing: Tener instalado el entorno de desarrollo de Processing (versión 3 o 4).

Librería oscP5: Es necesario instalar la librería oscP5 desde el gestor de contribuciones de Processing.

Abre Processing.

Ve a Sketch > Importar Librería... > Añadir Librería....

Busca "oscP5" e instálala.

Emisor OSC: La aplicación MediaPipe Tracker OSC debe estar ejecutándose y enviando datos a la IP y puerto correctos.

¿Cómo Usarlo?
Clona o descarga esta carpeta.

Abre el archivo osc_receiver.pde con Processing.

Configura el puerto: Asegúrate de que el puertoEscucha en el sketch coincida con el puerto de envío en la aplicación de Python. El valor por defecto en el sketch es 6448.

Ejecuta la aplicación de Python para que comience a enviar datos OSC.

Ejecuta el sketch en Processing. Deberías ver los puntos detectados dibujados en la ventana.

Este receptor fue desarrollado para ser compatible con el emisor de MediaPipe creado por Matías Romero Costas.