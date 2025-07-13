import 'package:crossing_catalogue/domain/entities/question_entity.dart';

final List<Question> personalityQuestions = [
  Question(
    question: 'What month were you born in?',
    answers: [
      'January',
      'February',
      'March',
      'April',
      'May',
      'June',
      'July',
      'August',
      'September',
      'October',
      'November',
      'December',
    ],
    effects: [
      {
        // January
        'birthmonth': {'November': 1, 'December': 2, 'January': 3, 'February': 2, 'March': 1},
      },
      {
        // February
        'birthmonth': {'December': 1, 'January': 2, 'February': 3, 'March': 2, 'April': 1},
      },
      {
        // March
        'birthmonth': {'January': 1, 'February': 2, 'March': 3, 'April': 2, 'May': 1},
      },
      {
        // April
        'birthmonth': {'February': 1, 'March': 2, 'April': 3, 'May': 2, 'June': 1},
      },
      {
        // May
        'birthmonth': {'March': 1, 'April': 2, 'May': 3, 'June': 2, 'July': 1},
      },
      {
        // June
        'birthmonth': {'April': 1, 'May': 2, 'June': 3, 'July': 2, 'August': 1},
      },
      {
        // July
        'birthmonth': {'May': 1, 'June': 2, 'July': 3, 'August': 2, 'September': 1},
      },
      {
        // August
        'birthmonth': {'June': 1, 'July': 2, 'August': 3, 'September': 2, 'October': 1},
      },
      {
        // September
        'birthmonth': {'July': 1, 'August': 2, 'September': 3, 'October': 2, 'November': 1},
      },
      {
        // October
        'birthmonth': {'August': 1, 'September': 2, 'October': 3, 'November': 2, 'December': 1},
      },
      {
        // November
        'birthmonth': {'September': 1, 'October': 2, 'November': 3, 'December': 2, 'January': 1},
      },
      {
        // December
        'birthmonth': {'October': 1, 'November': 2, 'December': 3, 'January': 2, 'February': 1},
      },
    ],
  ),
  Question(
    question: 'Which word best describes you?',
    answers: [
      'Kindness',
      'Determination',
      'Integrity',
      'Justice',
      'Patience',
      'Perseverance',
      'Courage',
    ],
    effects: [
      {
        // Kindness
        'species': {
          'Kangaroo': 1,
          'Bear cub': 1,
          'Wolf': 1,
          'Koala': 1,
          'Sheep': 1,
        },
        'fav_colors': {'Green': 1},
      },
      {
        // Determination
        'species': {'Alligator': 1, 'Cat': 1, 'Horse': 1, 'Bird': 1, 'Bull': 1},
        'fav_colors': {'Red': 1},
      },
      {
        // Integrity
        'species': {'Chicken': 1, 'Deer': 1, 'Rhino': 1, 'Pig': 1, 'Rabbit': 1},
        'fav_colors': {'Blue': 1},
      },
      {
        // Justice
        'species': {'Lion': 1, 'Dog': 1, 'Eagle': 1, 'Goat': 1, 'Gorilla': 1},
        'fav_colors': {'Yellow': 1},
      },
      {
        // Patience
        'species': {
          'Anteater': 1,
          'Mouse': 1,
          'Hippo': 1,
          'Elephant': 1,
          'Cow': 1,
        },
        'fav_colors': {'Aqua': 1},
      },
      {
        // Perseverance
        'species': {
          'Penguin': 1,
          'Frog': 1,
          'Bear': 1,
          'Duck': 1,
          'Ostrich': 1,
        },
        'fav_colors': {'Purple': 1},
      },
      {
        // Courage
        'species': {
          'Monkey': 1,
          'Hamster': 1,
          'Squirrel': 1,
          'Tiger': 1,
          'Octopus': 1,
        },
        'fav_colors': {'Orange': 1},
      },
    ],
  ),
  Question(
    question: 'What are your interests?',
    answers: [
      'Drawing',
      'Studying',
      'Exercising',
      'Playing video games',
      'Reading books',
      'Shopping',
      'Playing instruments',
    ],
    effects: [
      {
        // Drawing
        'personality': {'Big sister': 1, 'Lazy': 2, 'Snooty': 2},
        'hobby': {'Fashion': 2},
      },
      {
        // Studying
        'personality': {'Big sister': 1, 'Smug': 2},
        'hobby': {'Education': 2},
      },
      {
        // Exercising
        'personality': {'Jock': 2, 'Peppy': 2},
        'hobby': {'Fitness': 2},
      },
      {
        // Playing video games
        'personality': {'Lazy': 1, 'Normal': 2, 'Big sister ': 1},
        'hobby': {'Play': 2},
      },
      {
        // Reading books
        'personality': {'Big sister': 2, 'Smug': 2, 'Snooty': 2},
        'hobby': {'Education': 2},
      },
      {
        // Shopping
        'personality': {'Big sister': 2, 'Peppy': 2, 'Snooty': 3},
        'hobby': {'Fashion': 2},
      },
      {
        // Playing instruments
        'personality': {'Smug': 2, 'Peppy': 2},
        'hobby': {'Music': 2},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: 'What are your favorite subjects?',
    answers: [
      'Arts',
      'Sciences',
      'Physical Education',
      'History',
      'Language',
      'Mathematics',
      'Music',
    ],
    effects: [
      {
        // Arts
        'personality': {'Lazy': 2, 'Smug': 3, 'Peppy': 2},
        'hobby': {'Fashion': 3},
        'fav_styles': {'Elegant': 2, 'Gorgeous': 2},
      },
      {
        // Sciences
        'personality': {'Normal': 2, 'Cranky': 1, 'Smug': 2},
        'fav_styles': {'Simple': 1},
        'hobby': {'Education': 2, 'Nature': 3},
      },
      {
        // Physical Education
        'personality': {'Jock': 3, 'Peppy': 3},
        'fav_styles': {'Active': 3, 'Cool': 1},
        'hobby': {'Fitness': 3},
      },
      {
        // History
        'personality': {'Cranky': 2, 'Smug': 2, 'Snooty': 3},
        'fav_styles': {'Elegant': 2},
        'hobby': {'Education': 3},
      },
      {
        // Language
        'personality': {'Cranky': 2, 'Normal': 3},
        'fav_styles': {'Cute': 1, 'Gorgeous': 2},
        'hobby': {'Education': 3},
      },
      {
        // Mathematics
        'personality': {'Cranky': 2, 'Smug': 3},
        'fav_styles': {'Simple': 3, 'Elegant': 1},
        'hobby': {'Education': 3},
      },
      {
        // Music
        'personality': {'Lazy': 2},
        'fav_styles': {'Simple': 1},
        'hobby': {'Music': 3, 'Play': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: 'Favorite movie genre?',
    answers: [
      'Action',
      'Comedy',
      'Fantasy',
      'Romance',
      'Horror',
      'Science Fiction',
      'Musical',
      'Historical',
    ],
    effects: [
      {
        // Action
        'personality': {'Jock': 2},
      },
      {
        // Comedy
        'personality': {'Lazy': 2},
      },
      {
        // Fantasy
        'personality': {'Smug': 2},
      },
      {
        // Romance
        'personality': {'Peppy': 2},
      },
      {
        // Horror
        'personality': {'Big sister': 2},
      },
      {
        // Science Fiction
        'personality': {'Normal': 2},
      },
      {
        // Musical
        'personality': {'Snooty': 2},
      },
      {
        // Historical
        'personality': {'Cranky': 2},
      },
    ],
  ),
  Question(
    question: 'Favorite music genre?',
    answers: ['Classical', 'Jazz', 'Pop', 'Rap', 'Rock', 'Techno'],
    effects: [
      {
        // Classical
        'fav_styles': {'Elegant': 2},
      },
      {
        // Jazz
        'fav_styles': {'Gorgeous': 2},
      },
      {
        // Pop
        'fav_styles': {'Cute': 2},
      },
      {
        // Rap
        'fav_styles': {'Active': 2},
      },
      {
        // Rock
        'fav_styles': {'Simple': 2},
      },
      {
        // Techno
        'fav_styles': {'Cool': 2},
      },
    ],
  ),
  Question(
    question: 'Favorite colors?',
    answers: [
      'Yellow',
      'Blue',
      'Beige',
      'White',
      'Brown',
      'Light Blue',
      'Gray',
      'Purple',
      'Orange',
      'Black',
      'Red',
      'Pink',
      'Green',
    ],
    effects: [
      {
        // Yellow
        'fav_colors': {'Yellow': 2, 'Colorful': 1},
      },
      {
        // Blue
        'fav_colors': {'Blue': 2, 'Colorful': 1},
      },
      {
        // Beige
        'fav_colors': {'Beige': 2},
      },
      {
        // White
        'fav_colors': {'White': 2},
      },
      {
        // Brown
        'fav_colors': {'Brown': 2},
      },
      {
        // Light Blue
        'fav_colors': {'Aqua': 2, 'Colorful': 1},
      },
      {
        // Gray
        'fav_colors': {'Gray': 2},
      },
      {
        // Purple
        'fav_colors': {'Purple': 2, 'Colorful': 1},
      },
      {
        // Orange
        'fav_colors': {'Orange': 2, 'Colorful': 1},
      },
      {
        // Black
        'fav_colors': {'Black': 2},
      },
      {
        // Red
        'fav_colors': {'Red': 2, 'Colorful': 1},
      },
      {
        // Pink
        'fav_colors': {'Pink': 2, 'Colorful': 1},
      },
      {
        // Green
        'fav_colors': {'Green': 2, 'Colorful': 1},
      },
    ],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: 'What is your favorite flavor?',
    answers: ['Sour', 'Tart', 'Bitter', 'Sweet', 'Spicy', 'Salty'],
    effects: [
      {
        // Sour
        'species': {
          'Gorilla': 1,
          'Elephant': 1,
          'Monkey': 1,
          'Rhino': 1,
          'Hippo': 1,
          'Tiger': 1,
        },
      },
      {
        // Tart
        'species': {
          'Eagle': 1,
          'Bear': 1,
          'Goat': 1,
          'Lion': 1,
          'Bird': 1,
          'Penguin': 1,
        },
      },
      {
        // Bitter
        'species': {
          'Anteater': 1,
          'Deer': 1,
          'Duck': 1,
          'Frog': 1,
          'Koala': 1,
          'Octopus': 1,
        },
      },
      {
        // Sweet
        'species': {
          'Rabbit': 1,
          'Bear cub': 1,
          'Mouse': 1,
          'Hamster': 1,
          'Squirrel': 1,
          'Cat': 1,
        },
      },
      {
        // Spicy
        'species': {
          'Chicken': 1,
          'Bull': 1,
          'Cow': 1,
          'Pig': 1,
          'Sheep': 1,
          'Wolf': 1,
        },
      },
      {
        // Salty
        'species': {
          'Alligator': 1,
          'Horse': 1,
          'Kangaroo': 1,
          'Ostrich': 1,
          'Dog': 1,
        },
      },
    ],
  ),
  Question(
    question: 'Do you have pets?',
    answers: ['Yes', 'No'],
    effects: [
      {
        // Yes
        'species': {
          'Bird': 2,
          'Cat': 2,
          'Dog': 2,
          'Duck': 2,
          'Frog': 2,
          'Hamster': 2,
          'Mouse': 2,
          'Rabbit': 2,
          'Squirrel': 2,
        },
      },
      {
        // No
        'species': {
          'Alligator': 2,
          'Anteater': 2,
          'Bear': 2,
          'Bear cub': 2,
          'Bull': 2,
          'Chicken': 2,
          'Cow': 2,
          'Deer': 2,
          'Eagle': 2,
          'Elephant': 2,
          'Goat': 2,
          'Gorilla': 2,
          'Hippo': 2,
          'Horse': 2,
          'Koala': 2,
          'Kangaroo': 2,
          'Lion': 2,
          'Monkey': 2,
          'Octopus': 2,
          'Ostrich': 2,
          'Penguin': 2,
          'Pig': 2,
          'Rhino': 2,
          'Sheep': 2,
          'Tiger': 2,
          'Wolf': 2,
        },
      },
    ],
  ),
];