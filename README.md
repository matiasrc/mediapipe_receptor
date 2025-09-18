{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica-Bold;\f1\froman\fcharset0 Times-Bold;\f2\fswiss\fcharset0 Helvetica;
\f3\froman\fcharset0 Times-Roman;\f4\fswiss\fcharset0 ArialMT;\f5\fswiss\fcharset0 Helvetica-Oblique;
}
{\colortbl;\red255\green255\blue255;\red21\green21\blue22;\red0\green0\blue0;\red13\green62\blue197;
}
{\*\expandedcolortbl;;\cssrgb\c10588\c10980\c11373;\cssrgb\c0\c0\c0;\cssrgb\c4314\c34118\c81569;
}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid101\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid2}
{\list\listtemplateid3\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid201\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid3}
{\list\listtemplateid4\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat3\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid301\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid4}
{\list\listtemplateid5\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid401\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid5}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}{\listoverride\listid3\listoverridecount0\ls3}{\listoverride\listid4\listoverridecount0\ls4}{\listoverride\listid5\listoverridecount0\ls5}}
\paperw11900\paperh16840\margl1440\margr1440\vieww15680\viewh13560\viewkind0
\deftab720
\pard\pardeftab720\sa160\partightenfactor0

\f0\b\fs64 \cf2 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 MediaPipe OSC Receiver (Processing)
\f1\fs48 \cf0 \strokec3 \
\pard\pardeftab720\sa320\partightenfactor0

\f2\b0\fs29\fsmilli14667 \cf2 \strokec2 Este es un sketch de Processing dise\'f1ado para recibir y visualizar datos de landmarks corporales, faciales y de manos enviados desde la aplicaci\'f3n {\field{\*\fldinst{HYPERLINK "https://www.google.com/search?q=https://github.com/tu_usuario/mediapipe-tracker-osc"}}{\fldrslt \cf4 \ul \ulc4 \strokec4 MediaPipe Tracker OSC}} a trav\'e9s del protocolo OSC.
\f3\fs24 \cf0 \strokec3 \

\f2\fs29\fsmilli14667 \cf2 \strokec2 El visualizador es compatible con los datos enviados por los modelos 
\f0\b Face
\f2\b0 , 
\f0\b Hands
\f2\b0 , 
\f0\b Pose
\f2\b0  y 
\f0\b Holistic
\f2\b0 .
\f3\fs24 \cf0 \strokec3 \
\pard\pardeftab720\sa160\partightenfactor0

\f0\b\fs48 \cf2 \strokec2 Caracter\'edsticas
\f1\fs36 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls1\ilvl0
\f0\fs29\fsmilli14667 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Recepci\'f3n Multimodelo:
\f2\b0  Recibe y procesa datos de cara (468 puntos), manos (21 puntos por mano) y pose (17 puntos).
\f4 \cf0 \strokec3 \
\ls1\ilvl0
\f0\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Visualizaci\'f3n en Tiempo Real:
\f2\b0  Dibuja los puntos y las conexiones entre ellos en la pantalla, escalando las coordenadas al tama\'f1o de la ventana.
\f4 \cf0 \strokec3 \
\ls1\ilvl0
\f0\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Estructura Modular:
\f2\b0  El c\'f3digo est\'e1 organizado en clases (Face, Hands, Pose) para una f\'e1cil comprensi\'f3n y modificaci\'f3n.
\f4 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa160\partightenfactor0
\ls1\ilvl0
\f0\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Robustez:
\f2\b0  Incluye verificaciones de formato de mensaje para evitar errores si los datos llegan de forma inesperada.
\f4 \cf0 \strokec3 \
\pard\pardeftab720\sa160\partightenfactor0

\f0\b\fs48 \cf2 \strokec2 Requisitos
\f1\fs36 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls2\ilvl0
\f0\fs29\fsmilli14667 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Processing:
\f2\b0  Tener instalado el entorno de desarrollo de {\field{\*\fldinst{HYPERLINK "https://www.google.com/search?q=https://processing.org/download"}}{\fldrslt \cf4 \ul \ulc4 \strokec4 Processing}} (versi\'f3n 3 o 4).
\f4 \cf0 \strokec3 \
\ls2\ilvl0
\f0\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Librer\'eda oscP5:
\f2\b0  Es necesario instalar la librer\'eda oscP5 desde el gestor de contribuciones de Processing.
\f4 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls3\ilvl0
\f2 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Abre Processing.
\f4 \cf0 \strokec3 \
\ls3\ilvl0
\f2 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Ve a Sketch > Importar Librer\'eda... > A\'f1adir Librer\'eda....
\f4 \cf0 \strokec3 \
\ls3\ilvl0
\f2 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Busca "oscP5" e inst\'e1lala.
\f4 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa160\partightenfactor0
\ls4\ilvl0
\f0\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Emisor OSC:
\f2\b0  La aplicaci\'f3n {\field{\*\fldinst{HYPERLINK "https://www.google.com/search?q=https://github.com/tu_usuario/mediapipe-tracker-osc"}}{\fldrslt \cf4 \ul \ulc4 \strokec4 MediaPipe Tracker OSC}} debe estar ejecut\'e1ndose y enviando datos a la IP y puerto correctos.
\f4 \cf0 \strokec3 \
\pard\pardeftab720\sa160\partightenfactor0

\f0\b\fs48 \cf2 \strokec2 \'bfC\'f3mo Usarlo?
\f1\fs36 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls5\ilvl0
\f0\fs29\fsmilli14667 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Clona o descarga
\f2\b0  esta carpeta.
\f4 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls5\ilvl0
\f2 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Abre el archivo osc_receiver.pde con Processing.
\f4 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls5\ilvl0
\f0\b \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Configura el puerto:
\f2\b0  Aseg\'farate de que el puertoEscucha en el sketch coincida con el puerto de env\'edo en la aplicaci\'f3n de Python (por defecto es 3333).
\f4 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\partightenfactor0
\ls5\ilvl0
\f2 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	4	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Ejecuta la aplicaci\'f3n de Python para que comience a enviar datos OSC.
\f4 \cf0 \strokec3 \
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa160\partightenfactor0
\ls5\ilvl0
\f2 \cf2 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	5	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Ejecuta el sketch en Processing. Deber\'edas ver los puntos detectados dibujados en la ventana.
\f4 \cf0 \strokec3 \
\pard\pardeftab720\sa320\partightenfactor0

\f5\i \cf2 \strokec2 Este receptor fue desarrollado para ser compatible con el emisor de MediaPipe creado por Mat\'edas Romero Costas.
\f3\i0\fs24 \cf0 \strokec3 \
}