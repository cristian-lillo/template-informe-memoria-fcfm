#import "conf.typ": conf, guia, pronombre
#let mostrar_guias = false
#show: conf.with(
    titulo: "DETERMINAR EL DESEMPEÑO DE JUGADORES DE FÚTBOL MEDIANTE APRENDIZAJE AUTOMÁTICO: UNA REVISIÓN SISTEMÁTICA",
    autor: (nombre: "CRISTIAN LILLO CIERO", pronombre: pronombre.el),
    informe: false,
    modalidad: "DOBLE TITULACIÓN CON MAGÍSTER",
    profesores: ((nombre: "JAVIER BUSTOS", pronombre: pronombre.el),),
    coguias: (),
    anno: "2024",
    espaciado_titulo: 2fr,
)

= Introducción

== Contexto y Motivación

Debido a la modernización del fútbol profesional, que en los últimos 15 años ha incorporado el uso el sistema de detección automática de goles (DAG) en las porterías @FIFA2012 y el videoarbitraje (VAR) en los partidos @IFAB2018, ha existido un aumento en el uso y desarrollo de tecnologías que permitan recopilar automáticamente las acciones realizadas por los jugadores durante los partidos @DeSousa2011 @Harell2020. Esta información permite analizar el rendimiento tanto de los equipos como de los jugadores, y es utilizada por los clubes de fútbol para mejorar su desempeño y tomar decisiones informadas respecto a la contratación de jugadores @Wakelam2022.

Previo a este avance tecnológico, los únicos datos disponibles eran los que se encontraban en las planillas de los partidos, donde se registraban los goles, tarjetas y cambios de jugadores @Muñoz2024. Sin embargo, en la actualidad, existen distintos métodos para la recopilación de datos, donde destacan los sistemas de seguimiento óptico y los eventos de fútbol. Los sistemas de seguimiento óptico utilizan cámaras de alta velocidad para capturar la posición de los jugadores y del balón en el campo de juego, lo que permite obtener información detallada sobre la velocidad, aceleración y distancia recorrida por los futbolistas. Por otro lado, los eventos de fútbol recopilan información sobre las acciones realizadas con el balón, tales como pases, tiros, goles, faltas, entre otros. Cada uno de estos eventos es registrado incluyendo el momento en que ocurrió, la ubicación en el campo de juego, el tipo de acción y el jugador involucrado, donde además se pueden agregar propiedades adicionales dependiendo del tipo de acción, como la ubicación final de un pase o el resultado de un tiro @Decroos2020. La investigación de esta tesis se enfocará en los datos obtenidos a través de los eventos de fútbol, ya que en estos se entrega una descripción más detallada sobre lo ocurrido en los partidos y es además la más utilizada en la actualidad debido al menor costo de implementación @Decroos2019. Esta información suele ser provista por empresas especializadas en la recopilación de datos de fútbol, como Opta Sports, Wyscout y StatsBomb, y es utilizada por la mayoría de los modelos de Machine Learning y Deep Learning que buscan determinar el rendimiento de los jugadores @Pappalardo2019.

== Problema

Para determinar el rendimiento de un jugador es necesario enfocarse en los eventos del partido donde participó el futbolista en particular. Pero, como no todas las acciones tienen la misma importancia en el resultado final del partido, es necesario determinar cuáles son las acciones clave a utilizar para evaluar el desempeño de un jugador, ya que no existe un estándar objetivo al respecto @Pappalardo2019. Algunos autores se han enfocado en una sola acción, como los pases realizados en una jugada que termina en un tiro @Duch2010 o la importancia que tiene un pase de terminar en gol @Brooks2016, mientras que otros han considerado todos los eventos posibles y les han asignado un peso para determinar su influencia en el rendimiento final del jugador @Pappalardo2019. Es por esto que se hace necesario realizar una revisión sistemática a los artículos de investigación publicados en el área, a fin de definir variables generales y comparar el rendimiento de diferentes modelos de Machine Learning y Deep Learning.

= Estado del Arte

#lorem(20) Ni idea. @Brinkjans2024

Este es un ejemplo de una revisión sistemática en el fútbol, pero relacionada al valor monetario de los jugadores. Específicamente al costo de trasnferencia entre clubes @Franceschi2024

Se muestra una clasificación de rendimiento mediante el uso de Plus-Minus, que es también utilizado en deportes como volleyball y hockey sobre hielo. @Kharrat2020

= Preguntas de Investigación

- ¿Se obtienen resultados más similares a los de Opta Sport y Wyscout con modelos de Machine Learning o de Deep Learning?
- ¿Es mejor utilizar variables obtenidas directamente de los eventos de fútbol o es preferible utilizar variables generadas a partir de estas?
- ¿Cuál es el mejor método para evaluar jugadores? ¿Considerando todas sus acciones o aquellas relevantes para su rol en el campo de juego?

= Hipótesis

Es posible determinar variables, basadas en las acciones de jugadores en partidos de fútbol, que influyen de forma transversal en la evaluación de un futbolista profesional según su rol en el campo de juego.

= Objetivos

== Objetivo General

El objetivo de esta investigación es analizar las distintas estrategias utilizadas por investigadores del área para definir las acciones clave que sirven para determinar el rendimiento de un futbolista profesional en uno o varios partidos.

== Objetivos Específicos

+ Recopilar artículos de investigación que utilicen datos de eventos de fútbol para determinar el rendimiento de los jugadores.
+ Identificar las variables utilizadas por los autores para evaluar el desempeño deportivo de los futbolistas.
+ Definir grupos de variables que sean comunes en los distintos artículos seleccionados.
+ Analizar influencia de las variables en cada uno de los artículos seleccionados.
+ Determinar variables generales, llamadas acciones clave, que permiten calificar el rendimiento de un jugador.

= Metodología

La metolodología de esta tesis puede ser dividida en las siguientes etapas:

== Búsqueda de Artículos

Se realizará una revisión sistemática de la literatura, donde se buscarán artículos que utilicen datos de eventos de fútbol para determinar el rendimiento de los jugadores. Se utilizarán las bases de datos Scopus, IEEE Xplore, Web of Science y Google Scholar para la búsqueda, donde se filtrarán los papers mediante las palabras clave "soccer", "football", "player performance", "machine learning" y "deep learning".

Se seleccionarán los artículos que cumplan con los siguientes criterios de inclusión: (1) que utilicen datos de eventos de fútbol, (2) que determinen el rendimiento de los jugadores, (3) que utilicen modelos de Machine Learning o Deep Learning, (4) que estén escritos en inglés o español y (5) que estén publicados en los últimos 15 años. Se excluirán de la selección aquellos que no cumplan con los criterios tambén aquellos que no estén disponibles en texto completo.

== Análisis de Artículos

Se extraerán las variables utilizadas por los autores para determinar el desempeño deportivo de los jugadores y se agruparán en categorías comunes. Posteriormente, se analizará la influencia de las variables en cada uno de los artículos seleccionados, a fin de determinar cuáles son las más relevantes y también para detectar posibles patrones en la combinación de variables.

== Experimentación

Se le entregarán distintos conjuntos de datos a modelos de Machine Learning y Deep Learning, propuestos previamente en la literatura, para determinar variaciones en la evaluación de los jugadores. En base a los resultados, se defininarán las acciones clave para calificar el rendimiento de un futbolista.

= Aporte de la Tesis

+ Estudio comparativo de las distintas estrategias propuestas por investigadores para determinar el rendimiento de un jugador de fútbol.
+ Definición de acciones clave para medir el desempeño de un futbolista.

#bibliography(
    "bibliografia.bib",
    title: "Referencias",
    full: false,
    style: "apa",
)
