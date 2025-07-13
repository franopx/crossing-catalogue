import 'package:crossing_catalogue/domain/entities/question_entity.dart';

final List<Question> islandQuestions = [
  Question(
    question: 'What aesthetic does your island have?',
    answers: ['Rural', 'Cute', 'Urban', 'Medieval', 'Natural', 'Messy'],
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
        // Cute
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
        // Urban
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
        // Messy
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
    question: 'What kind of villagers do you like?',
    answers: ['Cute', 'Funny', 'Weird', 'Cool'],
    effects: [
      {
        // Cute
        'personality': {'smug': 1, 'snooty': 1},
        'fav_styles': {'cute': 1, 'elegant': 1, 'gorgeous': 1},
        'hobby': {'fashion': 1, 'education': 1, 'nature': 1},
      },
      {
        // Funny
        'personality': {'lazy': 1, 'normal': 1},
        'fav_styles': {'simple': 1, 'active': 1, 'cute': 1},
        'hobby': {'play': 1, 'music': 1, 'fashion': 1},
      },
      {
        // Weird
        'personality': {'cranky': 1, 'big sister': 1},
        'fav_styles': {'elegant': 1, 'cool': 1, 'gorgeous': 1},
        'hobby': {'play': 1, 'nature': 1, 'fitness': 1},
      },
      {
        // Cool
        'personality': {'jock': 1, 'peppy': 1},
        'fav_styles': {'cool': 1, 'active': 1, 'simple': 1},
        'hobby': {'education': 1, 'music': 1, 'fitness': 1},
      },
    ],
  ),
  Question(
    question: 'What do you usually do while playing?',
    answers: [
      'Daily Tasks',
      'Talk to Villagers',
      'Visit Friends',
      'Mystery Islands',
    ],
    effects: [
      {
        // Daily Tasks
        'personality': {'smug': 1, 'snooty': 1},
      },
      {
        // Talk to Villagers
        'personality': {'lazy': 1, 'normal': 1},
      },
      {
        // Visit Friends
        'personality': {'cranky': 1, 'big sister': 1},
      },
      {
        // Mystery Islands
        'personality': {'jock': 1, 'peppy': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: 'During which season do you usually play?',
    answers: ['Summer', 'Autumn', 'Winter', 'Spring'],
    effects: [
      {
        // Summer
        'birthmonth': {'jan': 3, 'feb': 3, 'mar': 3},
      },
      {
        // Autumn
        'birthmonth': {'apr': 3, 'may': 3, 'jun': 3},
      },
      {
        // Winter
        'birthmonth': {'jul': 3, 'aug': 3, 'sep': 3},
      },
      {
        // Spring
        'birthmonth': {'oct': 3, 'nov': 3, 'dec': 3},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: 'How many times do you play per week?',
    answers: ['1 day', '3 days', '5 days', 'Every day'],
    effects: [
      {
        // 1 day
        'hobby': {'education': 1},
      },
      {
        // 3 days
        'hobby': {'music': 1},
      },
      {
        // 5 days
        'hobby': {'fitness': 1},
      },
      {
        // Every day
        'hobby': {'play': 1},
      },
    ],
  ),
  Question(
    question: 'At what times do you usually play?',
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
    question: 'How many stars does your island have?',
    answers: [
      'I have not unlocked them',
      '1 star',
      '2 stars',
      '3 stars',
      '4 stars',
      '5 stars',
    ],
    effects: [
      {
        // I have not unlocked them
        'fav_styles': {'simple': 1},
      },
      {
        // 1 star
        'fav_styles': {'cool': 1},
      },
      {
        // 2 stars
        'fav_styles': {'active': 1},
      },
      {
        // 3 stars
        'fav_styles': {'cute': 1},
      },
      {
        // 4 stars
        'fav_styles': {'gorgeous': 1},
      },
      {
        // 5 stars
        'fav_styles': {'elegant': 1},
      },
    ],
  ),
  Question(
    question: 'What fruits does your island have?',
    answers: [
      'Apples',
      'Cherries',
      'Oranges',
      'Peaches',
      'Pears',
      'Coconuts',
    ],
    effects: [
      {
        // Apples
        'fav_colors': {'red': 1, 'yellow': 1, 'brown': 1},
      },
      {
        // Cherries
        'fav_colors': {'red': 2, 'green': 1},
      },
      {
        // Oranges
        'fav_colors': {'orange': 2, 'green': 1},
      },
      {
        // Peaches
        'fav_colors': {'pink': 2, 'white': 1},
      },
      {
        // Pears
        'fav_colors': {'green': 1, 'yellow': 1, 'brown': 1},
      },
      {
        // Coconuts
        'fav_colors': {'green': 3},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: 'Are you up to date with the latest Animal Crossing news?',
    answers: ['Yes', 'No'],
    effects: [
      {
        // Yes
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