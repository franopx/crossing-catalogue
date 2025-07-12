import 'package:crossing_catalogue/domain/entities/question_entity.dart';

final List<Question> islandQuestions = [
  Question(
    question: '¿Qué estética tiene tu isla?',
    answers: ['Rural', 'Tierna', 'Citadina', 'Medieval', 'Natural', 'Desorden'],
    effects: [
      {
        // Rural
        'species': {},
        'personality': {'jock': 1, 'big sister': 1},
        'hobby': {'fitness': 1, 'education': 1},
      },
      {
        // Tierna
        'species': {},
        'personality': {'peppy': 1, 'snooty': 1},
        'hobby': {'fashion': 1, 'play': 1},
      },
      {
        // Citadina
        'species': {},
        'personality': {'lazy': 1, 'snooty': 1},
        'hobby': {'fashion': 1, 'education': 1},
      },
      {
        // Medieval
        'species': {},
        'personality': {'jock': 1, 'cranky': 1},
        'hobby': {'education': 1, 'music': 1},
      },
      {
        // Natural
        'species': {},
        'personality': {'normal': 1, 'peppy': 1},
        'hobby': {'nature': 1, 'play': 1},
      },
      {
        // Desorden
        'species': {},
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
      },
      {
        // Chistosos
      },
      {
        // Raros
      },
      {
        // Geniales
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
      },
      {
        // Hablar con Aldeanos
      },
      {
        // Visitar Amigos
      },
      {
        // Islas Misteriosas
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
      },
      {
        // 1 estrella
      },
      {
        // 2 estrellas
      },
      {
        // 3 estrellas
      },
      {
        // 4 estrellas
      },
      {
        // 5 estrellas
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
      },
      {
        // No
      },
    ],
  ),
];
