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
        'birthmonth': {'nov': 1, 'dec': 2, 'jan': 3, 'feb': 2, 'mar': 1},
      },
      {
        // Febrero
        'birthmonth': {'dec': 1, 'jan': 2, 'feb': 3, 'mar': 2, 'apr': 1},
      },
      {
        // Marzo
        'birthmonth': {'jan': 1, 'feb': 2, 'mar': 3, 'apr': 2, 'may': 1},
      },
      {
        // Abril
        'birthmonth': {'feb': 1, 'mar': 2, 'apr': 3, 'may': 2, 'jun': 1},
      },
      {
        // Mayo
        'birthmonth': {'mar': 1, 'apr': 2, 'may': 3, 'jun': 2, 'jul': 1},
      },
      {
        // Junio
        'birthmonth': {'apr': 1, 'may': 2, 'jun': 3, 'jul': 2, 'aug': 1},
      },
      {
        // Julio
        'birthmonth': {'may': 1, 'jun': 2, 'jul': 3, 'aug': 2, 'sep': 1},
      },
      {
        // Agosto
        'birthmonth': {'jun': 1, 'jul': 2, 'aug': 3, 'sep': 2, 'oct': 1},
      },
      {
        // Septiembre
        'birthmonth': {'jul': 1, 'aug': 2, 'sep': 3, 'oct': 2, 'nov': 1},
      },
      {
        // Octubre
        'birthmonth': {'aug': 1, 'sep': 2, 'oct': 3, 'nov': 2, 'dec': 1},
      },
      {
        // Noviembre
        'birthmonth': {'sep': 1, 'oct': 2, 'nov': 3, 'dec': 2, 'jan': 1},
      },
      {
        // Diciembre
        'birthmonth': {'oct': 1, 'nov': 2, 'dec': 3, 'jan': 2, 'feb': 1},
      },
    ],
  ),
  Question(
    question: '¿Qué palabra te describe mejor?',
    answers: [
      'Amabilidad',
      'Determinacion',
      'Integridad',
      'Justicia',
      'Paciencia',
      'Perseverancia',
      'Valentia',
    ],
    effects: [
      {
        // Amabilidad
        'species': {
          'kangaroo': 1,
          'bear cub': 1,
          'wolf': 1,
          'koala': 1,
          'sheep': 1,
        },
        'fav_colors': {'green': 1},
      },
      {
        // Determinacion
        'species': {'alligator': 1, 'cat': 1, 'horse': 1, 'bird': 1, 'bull': 1},
        'fav_colors': {'red': 1},
      },
      {
        // Integridad
        'species': {'chicken': 1, 'deer': 1, 'rhino': 1, 'pig': 1, 'rabbit': 1},
        'fav_colors': {'blue': 1},
      },
      {
        // Justicia
        'species': {'lion': 1, 'dog': 1, 'eagle': 1, 'goat': 1, 'gorilla': 1},
        'fav_colors': {'yellow': 1},
      },
      {
        // Paciencia
        'species': {
          'anteater': 1,
          'mouse': 1,
          'hippo': 1,
          'elephant': 1,
          'cow': 1,
        },
        'fav_colors': {'aqua': 1},
      },
      {
        // Perseverancia
        'species': {
          'penguin': 1,
          'frog': 1,
          'bear': 1,
          'duck': 1,
          'ostrich': 1,
        },
        'fav_colors': {'purple': 1},
      },
      {
        // Valentia
        'species': {
          'monkey': 1,
          'hamster': 1,
          'squirrel': 1,
          'tiger': 1,
          'octopus': 1,
        },
        'fav_colors': {'orange': 1},
      },
    ],
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
        'personality': {'big sister': 1, 'lazy': 2, 'snooty': 2},
        'hobby': {'fashion': 2},
      },
      {
        // Estudiar
        'personality': {'big sister': 1, 'smug': 2},
        'hobby': {'education': 2},
      },
      {
        // Hacer ejercicio
        'personality': {'jock': 2, 'peppy': 2},
        'hobby': {'fitness': 2},
      },
      {
        // Jugar videojuegos
        'personality': {'lazy': 1, 'noral': 2, 'big sister ': 1},
        'hobby': {'play': 2},
      },
      {
        // Leer libros
        'personality': {'big sister': 2, 'smug': 2, 'snooty': 2},
        'hobby': {'education': 2},
      },
      {
        // Salir de compras
        'personality': {'big sister': 2, 'peppy': 2, 'snooty': 3},
        'hobby': {'fashion': 2},
      },
      {
        // Tocar instrumentos
        'personality': {'smug': 2, 'peppy': 2},
        'hobby': {'music': 2},
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
        'personality': {'jock': 3, 'peppy': 3},
        'fav_styles': {'active': 3, 'cool': 1},
        'hobby': {'fitness': 3},
      },
      {
        // Historia
        'personality': {'cranky': 2, 'smug': 2, 'snooty': 3},
        'fav_styles': {'elegant': 2},
        'hobby': {'education': 3},
      },
      {
        // Lenguaje
        'personality': {'cranky': 2, 'normal': 3},
        'fav_styles': {'cute': 1, 'gorgeous': 2},
        'hobby': {'education': 3},
      },
      {
        // Matemática
        'personality': {'cranky': 2, 'smug': 3},
        'fav_styles': {'simple': 3, 'elegant': 1},
        'hobby': {'education': 3},
      },
      {
        // Música
        'personality': {'lazy': 2},
        'fav_styles': {'simple': 1},
        'hobby': {'music': 3, 'play': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Genero de pelicula favorita?',
    answers: [
      'Acción',
      'Comedia',
      'Fantasia',
      'Romance',
      'Terror',
      'Ciencia Ficcion',
      'Musical',
      'Historica',
    ],
    effects: [
      {
        // Accion
        'personality': {'jock': 2},
      },
      {
        // Comedia
        'personality': {'lazy': 2},
      },
      {
        // Fantasia
        'personality': {'smug': 2},
      },
      {
        // Romance
        'personality': {'peppy': 2},
      },
      {
        // Terror
        'personality': {'big sister': 2},
      },
      {
        // Ciencia Ficcion
        'personality': {'normal': 2},
      },
      {
        // Musical
        'personality': {'snooty': 2},
      },
      {
        // Historica
        'personality': {'cranky': 2},
      },
    ],
  ),
  Question(
    question: '¿Genero musical favorito?',
    answers: ['Clásica', 'Jazz', 'Pop', 'Rap', 'Rock', 'Tecno'],
    effects: [
      {
        // Clasica
        'fav_styles': {'elegant': 2},
      },
      {
        // Jazz
        'fav_styles': {'gorgeous': 2},
      },
      {
        // Pop
        'fav_styles': {'cute': 2},
      },
      {
        // Rap
        'fav_styles': {'active': 2},
      },
      {
        // Rock
        'fav_styles': {'simple': 2},
      },
      {
        // Tecno
        'fav_styles': {'cool': 2},
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
        // Ácido
        'species': {
          'gorilla': 1,
          'elephant': 1,
          'monkey': 1,
          'rhino': 1,
          'hippo': 1,
          'tiger': 1,
        },
      },
      {
        // Agrio
        'species': {
          'eagle': 1,
          'bear': 1,
          'goat': 1,
          'lion': 1,
          'bird': 1,
          'penguin': 1,
        },
      },
      {
        // Amargo
        'species': {
          'anteater': 1,
          'deer': 1,
          'duck': 1,
          'frog': 1,
          'koala': 1,
          'octopus': 1,
        },
      },
      {
        // Dulce
        'species': {
          'rabbit': 1,
          'bear cub': 1,
          'mouse': 1,
          'hamster': 1,
          'squirrel': 1,
          'cat': 1,
        },
      },
      {
        // Picante
        'species': {
          'chicken': 1,
          'bull': 1,
          'cow': 1,
          'pig': 1,
          'sheep': 1,
          'wolf': 1,
        },
      },
      {
        // Salado
        'species': {
          'alligator': 1,
          'horse': 1,
          'kangaroo': 1,
          'ostrich': 1,
          'dog': 1,
        },
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
