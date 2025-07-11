import 'package:crossing_catalogue/domain/entities/question_entity.dart';

final List<Question> islandQuestions = [
  Question(
    question: '¿Qué estética tiene tu isla?',
    answers: ['Rural', 'Tierna', 'Citadina', 'Medieval', 'Natural', 'Desorden'],
    effects: [],
  ),
  Question(
    question: '¿Qué tipo de aldeanos te gustan?',
    answers: ['Bonitos', 'Chistosos', 'Raros', 'Geniales'],
    effects: [],
  ),
  Question(
    question: '¿Qué sueles hacer al jugar?',
    answers: [
      'Tareas Diarias',
      'Hablar con Aldeanos',
      'Visitar Amigos',
      'Islas Misteriosas',
    ],
    effects: [],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿En qué época sueles jugar?',
    answers: ['Verano', 'Otoño', 'Invierno', 'Primavera'],
    effects: [],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Cuántas veces juegas a la semana?',
    answers: ['1 dia', '3 dias', '5 dias', 'Todos los días'],
    effects: [],
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
    effects: [],
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
    effects: [],
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
    effects: [],
    type: QuestionType.multipleChoice,
  ),
  Question(
    question: '¿Estás al tanto de las últimas noticias de Animal Crossing?',
    answers: ['Si', 'No'],
    effects: [],
  ),
];
