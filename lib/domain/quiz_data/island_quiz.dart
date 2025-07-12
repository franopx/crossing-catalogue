import 'package:crossing_catalogue/domain/entities/question_entity.dart';

final List<Question> islandQuestions = [
  Question(
    question: '¿Qué estética tiene tu isla?',
    answers: ['Rural', 'Tierna', 'Citadina', 'Medieval', 'Natural', 'Desorden'],
    effects: [
      {
        // Rural
        'species': {
          'pig': 1,
          'cow': 1,
          'chicken': 1,
          'bull': 1,
          'sheep': 1,
          'goat': 1,
        },
        'personality': {'jock': 1, 'big sister': 1},
        'hobby': {'fitness': 1, 'education': 1},
      },
      {
        // Tierna
        'species': {
          'squirrel': 1,
          'hamster': 1,
          'bear cub': 1,
          'penguin': 1,
          'rabbit': 1,
          'deer': 1,
        },
        'personality': {'peppy': 1, 'snooty': 1},
        'hobby': {'fashion': 1, 'play': 1},
      },
      {
        // Citadina
        'species': {
          'cat': 1,
          'dog': 1,
          'mouse': 1,
          'bird': 1,
          'octopus': 1,
          'kangaroo': 1,
        },
        'personality': {'lazy': 1, 'snooty': 1},
        'hobby': {'fashion': 1, 'education': 1},
      },
      {
        // Medieval
        'species': {
          'lion': 1,
          'horse': 1,
          'bear': 1,
          'eagle': 1,
          'wolf': 1,
          'elephant': 1,
        },
        'personality': {'jock': 1, 'cranky': 1},
        'hobby': {'education': 1, 'music': 1},
      },
      {
        // Natural
        'species': {
          'tiger': 1,
          'koala': 1,
          'monkey': 1,
          'rhino': 1,
          'hippo': 1,
          'alligator': 1,
        },
        'personality': {'normal': 1, 'peppy': 1},
        'hobby': {'nature': 1, 'play': 1},
      },
      {
        // Desorden
        'species': {
          'gorilla': 1,
          'anteater': 1,
          'ostrich': 1,
          'frog': 1,
          'duck': 1,
        },
        'personality': {'lazy': 1, 'cranky': 1},
        'hobby': {'music': 1, 'fitness': 1},
      },
    ],
  ),
  Question(
    question: '¿Qué tipo de aldeanos te gustan?',
    answers: ['Bonitos', 'Chistosos', 'Raros', 'Geniales'],
    effects: [
      {
        // Bonitos
        'personality': {'smug': 1, 'snooty': 1},
        'fav_styles': {'cute': 1, 'elegant': 1, 'gorgeous': 1},
        'hobby': {'fashion': 1, 'education': 1, 'nature': 1},
      },
      {
        // Chistosos
        'personality': {'lazy': 1, 'normal': 1},
        'fav_styles': {'simple': 1, 'active': 1, 'cute': 1},
        'hobby': {'play': 1, 'music': 1, 'fashion': 1},
      },
      {
        // Raros
        'personality': {'cranky': 1, 'big sister': 1},
        'fav_styles': {'elegnat': 1, 'cool': 1, 'gorgeous': 1},
        'hobby': {'play': 1, 'nature': 1, 'fitness': 1},
      },
      {
        // Geniales
        'personality': {'jock': 1, 'peppy': 1},
        'fav_styles': {'cool': 1, 'active': 1, 'simple': 1},
        'hobby': {'education': 1, 'music': 1, 'fitness': 1},
      },
    ],
  ),
  Question(
    question: '¿Qué sueles hacer al jugar?',
    answers: [
      'Tareas Diarias',
      'Hablar con Aldeanos',
      'Visitar Amigos',
      'Islas Misteriosas',
    ],
    effects: [
      {
        // Tareas Diarias
        'personality': {'smug': 1, 'snooty': 1},
      },
      {
        // Hablar con Aldeanos
        'personality': {'lazy': 1, 'normal': 1},
      },
      {
        // Visitar Amigos
        'personality': {'cranky': 1, 'big sister': 1},
      },
      {
        // Islas Misteriosas
        'personality': {'jock': 1, 'peppy': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿En qué época sueles jugar?',
    answers: ['Verano', 'Otoño', 'Invierno', 'Primavera'],
    effects: [
      {
        // Verano
        'birthmonth': {'jan': 3, 'feb': 3, 'mar': 3},
      },
      {
        // Otoño
        'birthmonth': {'apr': 3, 'may': 3, 'jun': 3},
      },
      {
        // Invierno
        'birthmonth': {'jul': 3, 'aug': 3, 'sep': 3},
      },
      {
        // Primavera
        'birthmonth': {'oct': 3, 'nov': 3, 'dec': 3},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Cuántas veces juegas a la semana?',
    answers: ['1 dia', '3 dias', '5 dias', 'Todos los días'],
    effects: [
      {
        // 1 dia
        'hobby': {'education': 1},
      },
      {
        // 3 dias
        'hobby': {'music': 1},
      },
      {
        // 5 dias
        'hobby': {'fitness': 1},
      },
      {
        // Todos los días
        'hobby': {'play': 1},
      },
    ],
  ),
  Question(
    question: '¿En qué horas sueles jugar?',
    answers: [
      '8:00 AM',
      '12:00 PM',
      '4:00 PM',
      '8:00 PM',
      '12:00 AM',
      '4:00 AM',
    ],
    effects: [
      {
        // 8:00 AM
        'personality': {
          'lazy': 1,
          'jock': 1,
          'cranky': 1,
          'smug': 1,
          'normal': 1,
          'peppy': 1,
          'snooty': 1,
          'big sister': 1,
        },
      },
      {
        // 12:00 PM
        'personality': {
          'lazy': 1,
          'jock': 1,
          'cranky': 1,
          'smug': 1,
          'normal': 1,
          'peppy': 1,
          'snooty': 1,
          'big sister': 1,
        },
      },
      {
        // 4:00 PM
        'personality': {
          'lazy': 1,
          'jock': 1,
          'cranky': 1,
          'smug': 1,
          'normal': 1,
          'peppy': 1,
          'snooty': 1,
          'big sister': 1,
        },
      },
      {
        // 8:00 PM
        'personality': {
          'lazy': 1,
          'jock': 1,
          'cranky': 1,
          'smug': 1,
          'normal': 1,
          'peppy': 1,
          'snooty': 1,
          'big sister': 1,
        },
      },
      {
        // 12:00 AM
        'personality': {
          'jock': 1,
          'cranky': 1,
          'smug': 1,
          'normal': 1,
          'peppy': 1,
          'snooty': 1,
          'big sister': 1,
        },
      },
      {
        // 4:00 AM
        'personality': {'jock': 1, 'cranky': 1, 'smug': 1, 'peppy': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Cuántas estrellas tiene tu isla?',
    answers: [
      'No las he desbloqueado',
      '1 estrella',
      '2 estrellas',
      '3 estrellas',
      '4 estrellas',
      '5 estrellas',
    ],
    effects: [
      {
        // No las he desbloqueado
        'fav_styles': {'simple': 1},
      },
      {
        // 1 estrella
        'fav_styles': {'cool': 1},
      },
      {
        // 2 estrellas
        'fav_styles': {'active': 1},
      },
      {
        // 3 estrellas
        'fav_styles': {'cute': 1},
      },
      {
        // 4 estrellas
        'fav_styles': {'gorgeous': 1},
      },
      {
        // 5 estrellas
        'fav_styles': {'elegant': 1},
      },
    ],
  ),
  Question(
    question: '¿Qué frutas tiene tu isla?',
    answers: [
      'Manzanas',
      'Cerezas',
      'Naranjas',
      'Melocotones',
      'Peras',
      'Cocos',
    ],
    effects: [
      {
        // Manzanas
        'fav_colors': {'red': 1, 'yellow': 1, 'brown': 1},
      },
      {
        // Cerezas
        'fav_colors': {'red': 2, 'green': 1},
      },
      {
        // Naranjas
        'fav_colors': {'orange': 2, 'green': 1},
      },
      {
        // Melocotones
        'fav_colors': {'pink': 2, 'white': 1},
      },
      {
        // Peras
        'fav_colors': {'green': 1, 'yellow': 1, 'brown': 1},
      },
      {
        // Cocos
        'fav_colors': {'green': 3},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Estás al tanto de las últimas noticias de Animal Crossing?',
    answers: ['Si', 'No'],
    effects: [
      {
        // Si
        'species': {
          'alligator': 1,
          'anteater': 1,
          'bear': 1,
          'bear cub': 1,
          'bird': 1,
          'bull': 1,
          'cat': 1,
          'chicken': 1,
          'cow': 1,
          'deer': 1,
          'dog': 1,
          'duck': 1,
          'eagle': 1,
          'elephant': 1,
          'frog': 1,
          'goat': 1,
          'gorilla': 1,
          'hamster': 1,
        },
      },
      {
        // No
        'species': {
          'hippo': 1,
          'horse': 1,
          'kangaroo': 1,
          'koala': 1,
          'lion': 1,
          'monkey': 1,
          'mouse': 1,
          'octopus': 1,
          'ostrich': 1,
          'penguin': 1,
          'pig': 1,
          'rabbit': 1,
          'rhino': 1,
          'sheep': 1,
          'squirrel': 1,
          'tiger': 1,
          'wolf': 1,
        },
      },
    ],
  ),
];
