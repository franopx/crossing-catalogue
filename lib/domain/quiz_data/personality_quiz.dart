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
    answers: [],
    effects: [],
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
    effects: [],
  ),
  Question(
    question: '¿Cuál es tu asignatura favorita?',
    answers: [
      'Artes',
      'Ciencias',
      'Educación Física',
      'Historia',
      'Lenguaje',
      'Matemática',
      'Música',
    ],
    effects: [],
  ),
  Question(
    question: '¿Genero de pelicula favorita?',
    answers: ['Acción', 'Comedia', 'Fantasia', 'Romance', 'Suspenso', 'Terror'],
    effects: [],
  ),
  Question(
    question: '¿Genero musical favorito?',
    answers: ['Clásica', 'Jazz', 'Pop', 'Rap', 'Rock', 'Tecno', 'Trap'],
    effects: [],
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
    effects: [],
  ),
  Question(
    question: '¿Cuál es tu sabor favorito?',
    answers: ['Ácido', 'Agrio', 'Amargo', 'Dulce', 'Picante', 'Salado'],
    effects: [],
  ),
  Question(question: '¿Tienes mascotas?', answers: ['Si', 'No'], effects: []),
];
