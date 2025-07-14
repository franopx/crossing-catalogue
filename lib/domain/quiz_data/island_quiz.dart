import 'package:crossing_catalogue/domain/entities/question_entity.dart';

final List<Question> islandQuestions = [
  Question(
    question: 'What aesthetic does your island have?',
    answers: ['Rural', 'Cute', 'Urban', 'Medieval', 'Natural', 'Messy'],
    effects: [
      {
        // Rural
        'species': {
          'Pig': 1,
          'Cow': 1,
          'Chicken': 1,
          'Bull': 1,
          'Sheep': 1,
          'Goat': 1,
        },
        'personality': {'Jock': 1, 'Big sister': 1},
        'hobby': {'Fitness': 1, 'Education': 1},
      },
      {
        // Cute
        'species': {
          'Squirrel': 1,
          'Hamster': 1,
          'Bear cub': 1,
          'Penguin': 1,
          'Rabbit': 1,
          'Deer': 1,
        },
        'personality': {'Peppy': 1, 'Snooty': 1},
        'hobby': {'Fashion': 1, 'Play': 1},
      },
      {
        // Urban
        'species': {
          'Cat': 1,
          'Dog': 1,
          'Mouse': 1,
          'Bird': 1,
          'Octopus': 1,
          'Kangaroo': 1,
        },
        'personality': {'Lazy': 1, 'Snooty': 1},
        'hobby': {'Fashion': 1, 'Education': 1},
      },
      {
        // Medieval
        'species': {
          'Lion': 1,
          'Horse': 1,
          'Bear': 1,
          'Eagle': 1,
          'Wolf': 1,
          'Elephant': 1,
        },
        'personality': {'Jock': 1, 'Cranky': 1},
        'hobby': {'Education': 1, 'Music': 1},
      },
      {
        // Natural
        'species': {
          'Tiger': 1,
          'Koala': 1,
          'Monkey': 1,
          'Rhino': 1,
          'Hippo': 1,
          'Alligator': 1,
        },
        'personality': {'Normal': 1, 'Peppy': 1},
        'hobby': {'Nature': 1, 'Play': 1},
      },
      {
        // Messy
        'species': {
          'Gorilla': 1,
          'Anteater': 1,
          'Ostrich': 1,
          'Frog': 1,
          'Duck': 1,
        },
        'personality': {'Lazy': 1, 'Cranky': 1},
        'hobby': {'Music': 1, 'Fitness': 1},
      },
    ],
  ),
  Question(
    question: 'What kind of villagers do you like?',
    answers: ['Cute', 'Funny', 'Weird', 'Cool'],
    effects: [
      {
        // Cute
        'personality': {'Smug': 1, 'Snooty': 1},
        'fav_styles': {'Cute': 1, 'Elegant': 1, 'Gorgeous': 1},
        'hobby': {'Fashion': 1, 'Education': 1, 'Nature': 1},
      },
      {
        // Funny
        'personality': {'Lazy': 1, 'Normal': 1},
        'fav_styles': {'Simple': 1, 'Active': 1, 'Cute': 1},
        'hobby': {'Play': 1, 'Music': 1, 'Fashion': 1},
      },
      {
        // Weird
        'personality': {'Cranky': 1, 'Big sister': 1},
        'fav_styles': {'Elegant': 1, 'Cool': 1, 'Gorgeous': 1},
        'hobby': {'Play': 1, 'Nature': 1, 'Fitness': 1},
      },
      {
        // Cool
        'personality': {'Jock': 1, 'Peppy': 1},
        'fav_styles': {'Cool': 1, 'Active': 1, 'Simple': 1},
        'hobby': {'Education': 1, 'Music': 1, 'Fitness': 1},
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
        'personality': {'Smug': 1, 'Snooty': 1},
      },
      {
        // Talk to Villagers
        'personality': {'Lazy': 1, 'Normal': 1},
      },
      {
        // Visit Friends
        'personality': {'Cranky': 1, 'Big sister': 1},
      },
      {
        // Mystery Islands
        'personality': {'Jock': 1, 'Peppy': 1},
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
        'birthmonth': {'Jan': 3, 'Feb': 3, 'Mar': 3},
      },
      {
        // Autumn
        'birthmonth': {'Apr': 3, 'May': 3, 'Jun': 3},
      },
      {
        // Winter
        'birthmonth': {'Jul': 3, 'Aug': 3, 'Sep': 3},
      },
      {
        // Spring
        'birthmonth': {'Oct': 3, 'Nov': 3, 'Dec': 3},
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
        'hobby': {'Education': 1},
      },
      {
        // 3 days
        'hobby': {'Music': 1},
      },
      {
        // 5 days
        'hobby': {'Fitness': 1},
      },
      {
        // Every day
        'hobby': {'Play': 1},
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
          'Lazy': 1,
          'Jock': 1,
          'Cranky': 1,
          'Smug': 1,
          'Normal': 1,
          'Peppy': 1,
          'Snooty': 1,
          'Big sister': 1,
        },
      },
      {
        // 12:00 PM
        'personality': {
          'Lazy': 1,
          'Jock': 1,
          'Cranky': 1,
          'Smug': 1,
          'Normal': 1,
          'Peppy': 1,
          'Snooty': 1,
          'Big sister': 1,
        },
      },
      {
        // 4:00 PM
        'personality': {
          'Lazy': 1,
          'Jock': 1,
          'Cranky': 1,
          'Smug': 1,
          'Normal': 1,
          'Peppy': 1,
          'Snooty': 1,
          'Big sister': 1,
        },
      },
      {
        // 8:00 PM
        'personality': {
          'Lazy': 1,
          'Jock': 1,
          'Cranky': 1,
          'Smug': 1,
          'Normal': 1,
          'Peppy': 1,
          'Snooty': 1,
          'Big sister': 1,
        },
      },
      {
        // 12:00 AM
        'personality': {
          'Jock': 1,
          'Cranky': 1,
          'Smug': 1,
          'Normal': 1,
          'Peppy': 1,
          'Snooty': 1,
          'Big sister': 1,
        },
      },
      {
        // 4:00 AM
        'personality': {'Jock': 1, 'Cranky': 1, 'Smug': 1, 'Peppy': 1},
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
        'fav_styles': {'Simple': 1},
      },
      {
        // 1 star
        'fav_styles': {'Cool': 1},
      },
      {
        // 2 stars
        'fav_styles': {'Active': 1},
      },
      {
        // 3 stars
        'fav_styles': {'Cute': 1},
      },
      {
        // 4 stars
        'fav_styles': {'Gorgeous': 1},
      },
      {
        // 5 stars
        'fav_styles': {'Elegant': 1},
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
        'fav_colors': {'Red': 1, 'Yellow': 1, 'Brown': 1},
      },
      {
        // Cherries
        'fav_colors': {'Red': 2, 'Green': 1},
      },
      {
        // Oranges
        'fav_colors': {'Orange': 2, 'Green': 1},
      },
      {
        // Peaches
        'fav_colors': {'Pink': 2, 'White': 1},
      },
      {
        // Pears
        'fav_colors': {'Green': 1, 'Yellow': 1, 'Brown': 1},
      },
      {
        // Coconuts
        'fav_colors': {'Green': 3},
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
          'Alligator': 1,
          'Anteater': 1,
          'Bear': 1,
          'Bear cub': 1,
          'Bird': 1,
          'Bull': 1,
          'Cat': 1,
          'Chicken': 1,
          'Cow': 1,
          'Deer': 1,
          'Dog': 1,
          'Duck': 1,
          'Eagle': 1,
          'Elephant': 1,
          'Frog': 1,
          'Goat': 1,
          'Gorilla': 1,
          'Hamster': 1,
        },
      },
      {
        // No
        'species': {
          'Hippo': 1,
          'Horse': 1,
          'Kangaroo': 1,
          'Koala': 1,
          'Lion': 1,
          'Monkey': 1,
          'Mouse': 1,
          'Octopus': 1,
          'Ostrich': 1,
          'Penguin': 1,
          'Pig': 1,
          'Rabbit': 1,
          'Rhino': 1,
          'Sheep': 1,
          'Squirrel': 1,
          'Tiger': 1,
          'Wolf': 1,
        },
      },
    ],
  ),
];