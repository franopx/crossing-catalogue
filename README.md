# Crossing Catalogue App
Crossing Catalogue es una aplicación complementaria para tu partida de Animal Crossing: New Horizons, en esta aplicación encontrarás todo sobre los distintos aldeanos que se encuentran en el juego, encontrar qué aldeano es mejor para tu isla y registrar tu progreso en el juego.

## API utilizada
Crossing Catalogue trabaja con la API de Nookipedia (la wiki de Animal Crossing)
para acceder a la documentacion y/o pedir una llave para la API puede visitar: https://api.nookipedia.com

## Características principales
- Encuentra todo sobre los 413 aldeanos presentes en Animal Crossing: New Horizons
- Accede al catálogo de aldeanos, donde podrás ordenar, buscar por texto, clasificar y filtrar para una búsqueda precisa
- Descubre qué aldeano es el mejor para tu isla utilizando la funcionalidad de aldeano misterioso, un cuestionario donde dependiendo de lo que respondas se te sugerirá un aldeano que se adecúe a tus respuestas
- Mantén el progreso de tu isla, pudiendo marcar las construcciones que llevas, los aldeanos que han llegado a tu partida, las colecciones de objetos para el museo, pesca e insectos.

## Estructura del proyecto
El proyecto está estructurado de forma modular, separando la lógica, componentes y widgets en distintos directorios:
- lib/domain/entities: Contiene las clases de información como los aldeanos, objetos de colección, preguntas y listas.
- lib/pages: Contiene las pantallas que se le mostrarán al usuario.
- lib/providers: Contiene las clases vinculadas a provider, que permite guardar preferencias localmente.
- lib/services: Contiene clases que vinculan otros servicios con el proyecto, como las APIs y bases de datos.

## Diagrama
Flujo de pantallas:

![flujo_de_pantallas](https://github.com/user-attachments/assets/4cb7af53-e7cc-4cd2-b7bb-867f43ac15bb)

## Desarrolladores
- Matías Oyarzún
- Francisco Galeno

## Link al video
https://youtu.be/EaA4NKDsQ8g

## Link a APK
La apk de la aplicación se puede encontrar en la sección de [releases](https://github.com/franopx/crossing-catalogue/releases/tag/apk) del proyecto.
