#import "conf.typ": conf, guia, pronombre
#let mostrar_guias = false
#show: conf.with(
    titulo: "Clasificador de Aprendizaje Automático para determinar Acciones Clave en el Desempeño Futbolístico de Jugadores",
    autor: (nombre: "Cristian Lillo Ciero", pronombre: pronombre.el),
    informe: false,
    modalidad: "Doble Titulación con Magíster",
    profesores: ((nombre: "Javier Bustos", pronombre: pronombre.el),),
    coguias: (),
    anno: "2024",
    espaciado_titulo: 2fr,
)

#guia(visible: mostrar_guias)[Se debe quitar todas las guías (estas cajas grises) antes de entregar el documento.

Para ello, se debe cambiar el valor de la variable `mostrar_guias` a `false` en la segunda línea del archivo.

Además, hay que reemplazar los datos de la portada en los parámetros de la función `conf` en la línea 3 del archivo.

Los parámetros que acepta la función `conf` son:
- título: El título del tema.
- autor: Un diccionario con campos `nombre` y `pronombre`. Para los pronombres, importar el diccionario `pronombre` desde `conf.typ`. Los valores disponibles son `pronombre.el`, `pronombre.ella` y `pronombre.elle`.
- informe: `false` si es la propuesta de tema, `true` si es el informe final.
- codigo: Omitir si es la propuesta de tema. Si es el informe final, colocar el código del ramo. (CC6908 para malla v3, CC6907 para malla v5)
- modalidad: Puede ser \"Memoria\", \"Práctica extendida\", \"Doble Titulación con Magíster\" o \"Doble Titulación de Dos Especialidades\"
- profesores: Lista de profesores guías. Cada elemento de la lista es un diccionario con campos `nombre` y `pronombre`. Si es un solo elemento, recordar poner una coma al final: `(dict_guia,)`
- supervisor: Información del supervisor en caso de práctica extendida. Es un diccionario con campos `nombre` y `pronombre`.
- anno: Año en que se entrega el informe. Por defecto se usa el año actual.
- espaciado_titulo: Espaciado extra antes del título y alrededor de autor. Por defecto es `1fr`. Se puede usar `2fr` para un espaciado doble, `3fr` para un espaciado triple, etc.

Como aproximación, se espera que la propuesta sea de 5 a 10 páginas.

No es necesario poner texto antes de la introducción.]


= Introducción

#guia(visible: mostrar_guias)[Dar una introducción al contexto del tema.

Explicar, en términos generales, el problema abordado.

Motivar la necesidad, la importancia y/o el valor de tener una (mejor) solución al problema.

En el caso de la práctica extendida, incluir detalles de la organización, su quehacer, el equipo y el supervisor con los cuales se va a trabajar, la relevancia del problema a la organización, etc.

(1 a 2 páginas)]

En la actualidad, el fútbol es un deporte que ha evolucionado en términos de tecnología y análisis de datos. Los clubes de fútbol han comenzado a utilizar herramientas tecnológicas para mejorar el rendimiento de sus jugadores y equipos. Sin embargo, en las etapas formativas, no se dispone de un modelo que permita evaluar el rendimiento de los futbolistas de manera objetiva. Esto conlleva a que los entrenadores deban evaluar el rendimiento de los jugadores en base a su experiencia y conocimiento del deporte, lo que puede llevar a sesgos y subjetividad.

En este contexto, el presente proyecto busca desarrollar un clasificador de aprendizaje automático que permita determinar las acciones clave en el desempeño futbolístico de los jugadores. Este clasificador permitirá a los entrenadores evaluar el rendimiento de manera objetiva y precisa. Para ello, se utilizarán técnicas de Machine Learning o Deep Learning para analizar los datos de los jugadores y determinar las acciones clave que influyen en su desempeño.

El desarrollo de este clasificador ayudará a identificar áreas de mejora y a tomar decisiones informadas en base a los datos. Además, se podrá utilizar en las etapas formativas de los clubes de fútbol para identificar y potenciar el talento desde edades tempranas, contribuyendo al desarrollo y formación de futbolistas.

= Situación Actual

#guia(visible: true)[Discutir las soluciones o recursos existentes relacionados con el problema. Justificar por qué es necesario un trabajo novedoso.

(1 a 2 páginas)]

Ejemplos de referencias:
- Conferencia: @CorlessJK97 // azucar sintactica para #cite("CorlessJK97")
- Revista y Tesis: @NewmanT42 @Turing38 // para citas múltiples se usa #cite

= Objetivos

#guia(visible: mostrar_guias)[Describir las _metas_ del trabajo. Hay que contestar acá: ¿_qué_ quieres lograr? (La sección que sigue contestará la pregunta: ¿_cómo_ lo vas a lograr?)

Ejemplos de metas: lograr que X sea (más) eficiente, usable, seguro, completo, preciso, barato, informativo, posible por primera vez, etc.

Ejemplos de _no_ metas: implementar algo en Javascript, aplicar modelo Y sobre los datos, etc. (Estas cosas van en la descripción de la *Solución propuesta*.)

Los objetivos deberían ser específicos, medibles, alcanzables y relevantes al problema (ver la clase 2). El plan de trabajo debería argumentar que sean acotados en tiempo (un semestre).

Al final del trabajo, debería ser factible saber si se ha logrado los objetivos enumerados acá, o saber cuán bien se han logrado, o no. Por ejemplo, si la meta es tener algo eficiente en términos de tiempo, debería haber una forma de evaluar o estudiar los tiempos. Acá tendrás que definir la forma general en que se podrá evaluar el trabajo.

(No hay que poner texto acá. Se puede empezar directamente con el objetivo general.)]

== Objetivo General

#guia(visible: mostrar_guias)[
Un _resumen conciso_ (no más de un párrafo) de la meta principal del trabajo, es decir, qué quieres lograr con el trabajo (o qué significa \"éxito\" en el contexto del trabajo).

El objetivo debería ser específico, medible, alcanzable, relevante al problema, y acotado en tiempo.

(\"Titularse\" no es una repuesta válida. :\))]

Se propone desarrollar un clasificador de aprendizaje automático que permita determinar las acciones clave en el desempeño futbolístico de los jugadores. Se utilizarán datos provenientes de StatsBomb @StatsBomb para entrenar el clasificador y se evaluará comparándolo con las acciones que determinan el resultado de un partido de fútbol, como goles, asistencias, pases clave, entre otros. El objetivo es lograr un clasificador que sea capaz de identificar las acciones clave en el desempeño futbolístico de los jugadores con una precisión superior al 90%.

== Objetivos Específicos

#guia(visible: mostrar_guias)[
Una _lista_ de los hitos principales que se quieren lograr para (intentar) cumplir con el objetivo general. Divide el objetivo general en varios hitos que formarán las etapas del trabajo.

Cada objetivo debería ser específico, medible, alcanzable, relevante al problema, y acotado en tiempo.

No se debería escribir más de un párrafo por hito.

Los objetivos específicos deberían \"sumar\" al objetivo general.

(Una lista de 3 a 7 párrafos)]

+ Obtener acciones realizadas por jugadores profesionales de fútbol. Estas deben estar en orden cronológico según la fecha del partido y el minuto de juego.
+ Entrenar distintos tipos de modelos, tanto de Machine Learning como de Deep Learning, para encontrar el que mejor se ajuste al problema y obtenga los mejores resultados.
+ Evaluar el clasificador con un conjunto de datos de prueba y verificar si se alcanza la precisión esperada.

== Evaluación

#guia(visible: mostrar_guias)[
Describe cómo vas a poder evaluar el trabajo en términos de cuán bien cumple con los objetivos planteados. Se pueden discutir los datos, las medidas, los usuarios, las técnicas, etc., utilizables para la evaluación.

(1 a 2 párrafos)]

Para evaluar el trabajo, se utilizará un conjunto de datos de prueba que no haya sido utilizado en el entrenamiento del clasificador. Se compararán las acciones identificadas por el clasificador con las acciones que influencian directamente el resultado de los partidos. La precisión del clasificador será la métrica principal para evaluar el trabajo, la cual deberá ser superior al 90% para considerar que el clasificador es efectivo.

= Solución Propuesta

#guia(visible: mostrar_guias)[
Una descripción general de la solución propuesta: los datos, las técnicas, las tecnologías, las herramientas, los lenguajes, los marcos, etc., que se usarán para intentar lograr los objetivos planteados. Aquí hay que contestar la pregunta: ¿_cómo_ vas a lograr los objetivos planteados? Aquí, sí, está muy bien hablar de Javascript, CNNs, Numpy, Django, índices invertidos, árboles wavelet, privacidad diferencial, PageRank, Diffie--Hellman, triangulaciones de Delaunay, CUDA, Postgres, etc.

(1 a 2 páginas)]

Se planea desarrollar el modelo en el lenguaje de Python, haciendo uso de librerías como scikit-learn, TensorFlow y Keras para el entrenamiento de los modelos de Machine Learning y Deep Learning. Como se mencionó previamente, una parte importante del trabajo consiste en determinar cuál tipo de modelo es el más óptimo para la resolución de la problemática. Para ello, se analizarán distintos modelos, como Random Forest (RF), Support Vector Machine (SVM), Redes Neuronales Convolucionales (CNN), entre otros, y se compararán los resultados obtenidos.

En relación a los datos, se dispone de una gran cantidad de archivos en formato JSON. Estos archivos están disponibles en el repositorio de GitHub de StatsBomb @StatsBomb y contienen información detallada de más de 3000 partidos. Los archivos se dividen en cuatro categorías: eventos, alineaciones, partidos y competiciones por temporada. Aunque el enfoque principal se centra en los eventos, se utilizarán los datos de las otras categorías para complementar la información y mejorar la calidad del clasificador.

Mediante el uso de librerías como Pandas y Matplotlib, se realizará un análisis exploratorio de los datos para identificar patrones y características relevantes. Se buscará determinar objetivamente cuáles son las acciones que modifican el resultado de un partido de fútbol y que, por lo tanto, deben ser consideradas como acciones clave por parte del modelo. Este análisis permitirá seleccionar las variables más relevantes para el entrenamiento del clasificador y descartar aquellas que no aporten información significativa.

Se debe determinar además la mejor manera de representar los datos para el entrenamiento del modelo, pues debe ser capaz de identificar patrones y relaciones entre las acciones realizadas por los jugadores. Se considera que la representación de los datos es un aspecto fundamental para el éxito del clasificador, por lo que se dedicará especial atención a este aspecto.

= Plan de Trabajo (Preliminar)

#guia(visible: mostrar_guias)[
Aquí se puede dar una lista preliminar de los pasos que se van a seguir para desarrollar la solución propuesta. La lista debería contemplar la evaluación del trabajo y la escritura del informe final del trabajo de título (memoria o práctica extendida). Siendo un plan preliminar, su propósito es dar una mejor idea de la factibilidad del tema y el trabajo que implica, pero se pueden aplicar cambios al plan para el informe final de este curso.

(0.5 a 2 páginas)]

+ Definir la mejor alternativa para almacenar la masiva cantidad de datos de StatsBomb.
+ Realizar un procesamiento a los datos para obtener las acciones realizadas por cada jugador en todos sus partidos disputados.
+ Realizar un análisis exploratorio de los datos para identificar patrones y características relevantes.
+ Seleccionar las variables más relevantes para el entrenamiento del clasificador.
+ Definir la mejor manera de representar los datos para el entrenamiento del modelo.
+ Entrenar distintos modelos de Machine Learning y Deep Learning para determinar cuál es el más óptimo para el problema.
+ Evaluar el clasificador con un conjunto de datos de prueba y verificar si se alcanza la precisión esperada.
+ Escribir el informe final de la tesis.


#bibliography(
    "bibliografia.yml",
    title: "Referencias",
    style: "ieee",
)