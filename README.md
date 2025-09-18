{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\froman\fcharset0 Times-Bold;\f1\froman\fcharset0 Times-Roman;\f2\fmodern\fcharset0 Courier;
\f3\froman\fcharset0 Times-Italic;}
{\colortbl;\red255\green255\blue255;\red0\green0\blue0;\red0\green0\blue233;}
{\*\expandedcolortbl;;\cssrgb\c0\c0\c0;\cssrgb\c0\c0\c93333;}
{\*\listtable{\list\listtemplateid1\listhybrid{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{disc\}}{\leveltext\leveltemplateid1\'01\uc0\u8226 ;}{\levelnumbers;}\fi-360\li720\lin720 }{\listname ;}\listid1}
{\list\listtemplateid2\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid101\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listlevel\levelnfc23\levelnfcn23\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{circle\}}{\leveltext\leveltemplateid102\'01\uc0\u9702 ;}{\levelnumbers;}\fi-360\li1440\lin1440 }{\listname ;}\listid2}
{\list\listtemplateid3\listhybrid{\listlevel\levelnfc0\levelnfcn0\leveljc0\leveljcn0\levelfollow0\levelstartat1\levelspace360\levelindent0{\*\levelmarker \{decimal\}}{\leveltext\leveltemplateid201\'01\'00;}{\levelnumbers\'01;}\fi-360\li720\lin720 }{\listname ;}\listid3}}
{\*\listoverridetable{\listoverride\listid1\listoverridecount0\ls1}{\listoverride\listid2\listoverridecount0\ls2}{\listoverride\listid3\listoverridecount0\ls3}}
\paperw11900\paperh16840\margl1440\margr1440\vieww15680\viewh13560\viewkind0
\deftab720
\pard\pardeftab720\sa321\partightenfactor0

\f0\b\fs48 \cf0 \expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 MediaPipe OSC Receiver (Processing)\
\pard\pardeftab720\sa240\partightenfactor0

\f1\b0\fs24 \cf0 Este es un sketch de Processing dise\'f1ado para recibir y visualizar datos de landmarks corporales, faciales y de manos enviados desde la aplicaci\'f3n {\field{\*\fldinst{HYPERLINK "https://github.com/matiasrc/mediapipe-tracker-osc"}}{\fldrslt \cf3 \ul \ulc3 \strokec3 MediaPipe Tracker OSC}} a trav\'e9s del protocolo OSC.\
El visualizador es compatible con los datos enviados por los modelos 
\f0\b Face
\f1\b0 , 
\f0\b Hands
\f1\b0 , 
\f0\b Pose
\f1\b0  y 
\f0\b Holistic
\f1\b0 .\
\pard\pardeftab720\sa298\partightenfactor0

\f0\b\fs36 \cf0 Caracter\'edsticas\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls1\ilvl0
\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Recepci\'f3n Multimodelo:
\f1\b0  Recibe y procesa datos de cara (468 puntos), manos (21 puntos por mano) y pose (17 puntos).\
\ls1\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Visualizaci\'f3n en Tiempo Real:
\f1\b0  Dibuja los puntos y las conexiones entre ellos en la pantalla, escalando las coordenadas al tama\'f1o de la ventana.\
\ls1\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Estructura Modular:
\f1\b0  El c\'f3digo est\'e1 organizado en clases (
\f2\fs26 Face
\f1\fs24 , 
\f2\fs26 Hands
\f1\fs24 , 
\f2\fs26 Pose
\f1\fs24 ) para una f\'e1cil comprensi\'f3n y modificaci\'f3n.\
\ls1\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u8226 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Robustez:
\f1\b0  Incluye verificaciones de formato de mensaje para evitar errores si los datos llegan de forma inesperada.\
\pard\pardeftab720\sa298\partightenfactor0

\f0\b\fs36 \cf0 Requisitos\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls2\ilvl0
\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Processing:
\f1\b0  Tener instalado el entorno de desarrollo de {\field{\*\fldinst{HYPERLINK "https://processing.org/"}}{\fldrslt \cf3 \ul \ulc3 \strokec3 Processing}} (versi\'f3n 3 o 4).\
\ls2\ilvl0
\f0\b \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Librer\'eda oscP5:
\f1\b0  Es necesario instalar la librer\'eda 
\f2\fs26 oscP5
\f1\fs24  desde el gestor de contribuciones de Processing.\
\pard\tx940\tx1440\pardeftab720\li1440\fi-1440\sa240\partightenfactor0
\ls2\ilvl1\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u9702 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Abre Processing.\
\ls2\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u9702 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Ve a 
\f2\fs26 Sketch
\f1\fs24  > 
\f2\fs26 Importar Librer\'eda...
\f1\fs24  > 
\f2\fs26 A\'f1adir Librer\'eda...
\f1\fs24 .\
\ls2\ilvl1\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	\uc0\u9702 	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Busca "oscP5" e inst\'e1lala.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls2\ilvl0
\f0\b \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Emisor OSC:
\f1\b0  La aplicaci\'f3n {\field{\*\fldinst{HYPERLINK "https://github.com/matiasrc/mediapipe-tracker-osc"}}{\fldrslt \cf3 \ul \ulc3 \strokec3 MediaPipe Tracker OSC}} debe estar ejecut\'e1ndose y enviando datos a la IP y puerto correctos.\
\pard\pardeftab720\sa298\partightenfactor0

\f0\b\fs36 \cf0 \'bfC\'f3mo Usarlo?\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls3\ilvl0
\fs24 \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	1	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Clona o descarga
\f1\b0  esta carpeta.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls3\ilvl0\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	2	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Abre el archivo 
\f2\fs26 osc_receiver.pde
\f1\fs24  con Processing.\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls3\ilvl0
\f0\b \cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	3	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Configura el puerto:
\f1\b0  Aseg\'farate de que el 
\f2\fs26 puertoEscucha
\f1\fs24  en el sketch coincida con el puerto de env\'edo en la aplicaci\'f3n de Python. El valor por defecto en el sketch es 
\f2\fs26 6448
\f1\fs24 .\
\pard\tx220\tx720\pardeftab720\li720\fi-720\sa240\partightenfactor0
\ls3\ilvl0\cf0 \kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	4	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Ejecuta la aplicaci\'f3n de Python para que comience a enviar datos OSC.\
\ls3\ilvl0\kerning1\expnd0\expndtw0 \outl0\strokewidth0 {\listtext	5	}\expnd0\expndtw0\kerning0
\outl0\strokewidth0 \strokec2 Ejecuta el sketch en Processing. Deber\'edas ver los puntos detectados dibujados en la ventana.\
\pard\pardeftab720\sa240\partightenfactor0

\f3\i \cf0 Este receptor fue desarrollado para ser compatible con el emisor de MediaPipe creado por Mat\'edas Romero Costas.
\f1\i0 \
}