import 'package:crossing_catalogue/domain/entities/question_entity.dart';

final List<Question> personalityQuestions = [
  Question(
    question: '¿En qué mes naciste?',
    answers: [
      'Enero',
      'Febrero',
      'Marzo',
      'Abril',
      'Mayo',
      'Junio',
      'Julio',
      'Agosto',
      'Septiembre',
      'Octubre',
      'Noviembre',
      'Diciembre',
    ],
    effects: [
      {
        // Enero
        'birthday_month': {'nov': 1, 'dec': 2, 'jan': 3, 'feb': 2, 'mar': 1},
      },
      {
        // Febrero
        'birthday_month': {'dec': 1, 'jan': 2, 'feb': 3, 'mar': 2, 'apr': 1},
      },
      {
        // Marzo
        'birthday_month': {'jan': 1, 'feb': 2, 'mar': 3, 'apr': 2, 'may': 1},
      },
      {
        // Abril
        'birthday_month': {'feb': 1, 'mar': 2, 'apr': 3, 'may': 2, 'jun': 1},
      },
      {
        // Mayo
        'birthday_month': {'mar': 1, 'apr': 2, 'may': 3, 'jun': 2, 'jul': 1},
      },
      {
        // Junio
        'birthday_month': {'apr': 1, 'may': 2, 'jun': 3, 'jul': 2, 'aug': 1},
      },
      {
        // Julio
        'birthday_month': {'may': 1, 'jun': 2, 'jul': 3, 'aug': 2, 'sep': 1},
      },
      {
        // Agosto
        'birthday_month': {'jun': 1, 'jul': 2, 'aug': 3, 'sep': 2, 'oct': 1},
      },
      {
        // Septiembre
        'birthday_month': {'jul': 1, 'aug': 2, 'sep': 3, 'oct': 2, 'nov': 1},
      },
      {
        // Octubre
        'birthday_month': {'aug': 1, 'sep': 2, 'oct': 3, 'nov': 2, 'dec': 1},
      },
      {
        // Noviembre
        'birthday_month': {'sep': 1, 'oct': 2, 'nov': 3, 'dec': 2, 'jan': 1},
      },
      {
        // Diciembre
        'birthday_month': {'oct': 1, 'nov': 2, 'dec': 3, 'jan': 2, 'feb': 1},
      },
    ],
  ),
  Question(
    question: '¿Qué palabra te describe mejor?',
    answers: ['a', 'b', 'c'],
    effects: [{}, {}, {}],
  ),
  Question(
    question: '¿Qué intereses tienes?',
    answers: [
      'Dibujar',
      'Estudiar',
      'Hacer ejercicio',
      'Jugar videojuegos',
      'Leer libros',
      'Salir de compras',
      'Tocar instrumentos',
    ],
    effects: [
      {
        // Dibujar
      },
      {
        // Estudiar
      },
      {
        // Hacer ejercicio
      },
      {
        // Jugar videojuegos
      },
      {
        // Leer libros
      },
      {
        // Salir de compras
      },
      {
        // Tocar instrumentos
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Cuáles son tus asignaturas favoritas?',
    answers: [
      'Artes',
      'Ciencias',
      'Educación Física',
      'Historia',
      'Lenguaje',
      'Matemática',
      'Música',
    ],
    effects: [
      {
        // Artes
        'personality': {'lazy': 2, 'smug': 3, 'peppy': 2},
        'hobby': {'fashion': 3},
        'fav_styles': {'elegant': 2, 'gorgeous': 2},
      },
      {
        // Ciencias
        'personality': {'normal': 2, 'cranky': 1, 'smug': 2},
        'fav_styles': {'simple': 1},
        'hobby': {'education': 2, 'nature': 3},
      },
      {
        // Educación Física
        'personality': {'jock': 3, 'big sister': 3},
        'fav_styles': {'active': 3, 'cool': 1},
        'hobby': {'fitness': 3},
      },
      {
        // Historia
      },
      {
        // Lenguaje
      },
      {
        // Matemática
      },
      {
        // Música
        'personality': {'lazy': 2},
        'hobby': {'music': 3, 'play': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Genero de pelicula favorita?',
    answers: ['Acción', 'Comedia', 'Fantasia', 'Romance', 'Suspenso', 'Terror'],
    effects: [
      {
        // Accion
      },
      {
        // Comedia
      },
      {
        // Fantasia
      },
      {
        // Romance
      },
      {
        // Suspenso
      },
      {
        // Terror
      },
    ],
  ),
  Question(
    question: '¿Genero musical favorito?',
    answers: ['Clásica', 'Jazz', 'Pop', 'Rap', 'Rock', 'Tecno', 'Trap'],
    effects: [
      {
        // Clasica
      },
      {
        // Jazz
      },
      {
        // Pop
      },
      {
        // Rap
      },
      {
        // Rock
      },
      {
        // Tecno
      },
      {
        // Trap
      },
    ],
  ),
  Question(
    question: '¿Colores favoritos?',
    answers: [
      'Amarillo',
      'Azul',
      'Beige',
      'Blanco',
      'Cafe',
      'Celeste',
      'Gris',
      'Morado',
      'Naranja',
      'Negro',
      'Rojo',
      'Rosa',
      'Verde',
    ],
    effects: [
      {
        // Amarillo
        'fav_colors': {'yellow': 2, 'colorful': 1},
      },
      {
        // Azul
        'fav_colors': {'blue': 2, 'colorful': 1},
      },
      {
        // Beige
        'fav_colors': {'beige': 2},
      },
      {
        // Blanco
        'fav_colors': {'white': 2},
      },
      {
        // Cafe
        'fav_colors': {'brown': 2},
      },
      {
        // Celeste
        'fav_colors': {'aqua': 2, 'colorful': 1},
      },
      {
        // Gris
        'fav_colors': {'gray': 2},
      },
      {
        // Morado
        'fav_colors': {'purple': 2, 'colorful': 1},
      },
      {
        // Naranja
        'fav_colors': {'orange': 2, 'colorful': 1},
      },
      {
        // Negro
        'fav_colors': {'black': 2},
      },
      {
        // Rojo
        'fav_colors': {'red': 2, 'colorful': 1},
      },
      {
        // Rosa
        'fav_colors': {'pink': 2, 'colorful': 1},
      },
      {
        // Verde
        'fav_colors': {'green': 2, 'colorful': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Cuál es tu sabor favorito?',
    answers: ['Ácido', 'Agrio', 'Amargo', 'Dulce', 'Picante', 'Salado'],
    effects: [
      {
        // Acido
      },
      {
        // Agrio
      },
      {
        // Amargo
      },
      {
        // Dulce
      },
      {
        // Picante
      },
      {
        // Salado
      },
    ],
  ),
  Question(
    question: '¿Tienes mascotas?',
    answers: ['Si', 'No'],
    effects: [
      {
        // Si
        'species': {
          'bird': 2,
          'cat': 2,
          'dog': 2,
          'duck': 2,
          'frog': 2,
          'hamster': 2,
          'mouse': 2,
          'rabbit': 2,
          'squirrel': 2,
        },
      },
      {
        // No
        'species': {
          'alligator': 2,
          'anteater': 2,
          'bear': 2,
          'bear cub': 2,
          'bull': 2,
          'chicken': 2,
          'cow': 2,
          'deer': 2,
          'eagle': 2,
          'elephant': 2,
          'goat': 2,
          'gorilla': 2,
          'hippo': 2,
          'horse': 2,
          'koala': 2,
          'kangaroo': 2,
          'lion': 2,
          'monkey': 2,
          'octopus': 2,
          'ostrich': 2,
          'penguin': 2,
          'pig': 2,
          'rhino': 2,
          'sheep': 2,
          'tiger': 2,
          'wolf': 2,
        },
      },
    ],
  ),
];
