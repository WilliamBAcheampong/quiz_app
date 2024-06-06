class Question {
  final int id;
  final String subject; // Add subject property
  final String question;
  final List<String> options;
  final int answer;

  Question({
    required this.id,
    required this.subject, // Add subject property
    required this.question,
    required this.options,
    required this.answer,
  });
}

// Sample data list containing two question objects
const List sample_data = [
 
  /////Maths Questions
  
  {  
    "id": 1,
    "subject": "Maths",
    "question": "How many fingers do you have on one hand?",
    "options": ["2", "5", "8", "10"],
    "answer_index": 1
  },
  {  
    "id": 2,
    "subject": "Maths",
    "question": "Which number comes after 3?",
    "options": ["1", "2", "3", "4"],
    "answer_index": 3
  },
  {
    "id": 3,
    "subject": "Maths",
    "question": "2 - 2 = ____?",
    "options": ["7", "0", "2", "5"],
    "answer_index": 1
  },
  {
    "id": 4,
    "subject": "Maths",
    "question": "How many legs does a cat have?",
    "options": ["2", "3", "4", "5"],
    "answer_index": 2
  },
  {   
    "id": 5,
    "subject": "Maths",
    "question": "What is 1 + 1?",
    "options": ["1", "2", "3", "4"],
    "answer_index": 1
  },
  {  
    "id": 6,
    "subject": "Maths",
    "question": "How many sides does a square have?",
    "options": ["1", "2", "3", "4"],
    "answer_index": 3
  },
  {
    "id": 7,
    "subject": "Maths",
    "question": "Which number comes before 7?",
    "options": ["3", "6", "7", "10"],
    "answer_index": 1
  },
  {
    "id": 8,
    "subject": "Maths",
    "question": "4 + 5 = ____?",
    "options": ["6", "3", "9", "4"],
    "answer_index": 2
  },
  {
    "id": 9,
    "subject": "Maths",
    "question": "4 + ____ = 7?",
    "options": ["1", "2", "3", "4"],
    "answer_index": 2
  },
  {
    "id": 10,
    "subject": "Maths",
    "question": "What is 4 - 3?",
    "options": ["1", "2", "3", "4"],
    "answer_index": 0
  },
  // {
  //   "id": 11,
  //   "subject": "Maths",
  //   "question": "Which number comes after 9?",
  //   "options": ["8", "9", "10", "11"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 12,
  //   "subject": "Maths",
  //   "question": "What is the name of this number, 8?",
  //   "options": ["Zero", "Eleven", "Eight", "Two"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 13,
  //   "subject": "Maths",
  //   "question": "What is the shape of the sun?",
  //   "options": ["Square", "Circle", "Triangle", "Rectangle"],
  //   "answer_index": 1
  // },
  // {
  //   "id": 14,
  //   "subject": "Maths",
  //   "question": "How many legs does a spider have?",
  //   "options": ["2", "4", "6", "8"],
  //   "answer_index": 3
  // },
  // {  
  //   "id": 15,
  //   "subject": "Maths",
  //   "question": "3 + ___ = 5",
  //   "options": ["1", "2", "3", "4"],
  //   "answer_index": 1
  // },
  // {
  //   "id": 16,
  //   "subject": "Maths",
  //   "question": "What is this, 5?",
  //   "options": ["Three", "Six", "Four", "Five"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 17,
  //   "subject": "Maths",
  //   "question": "What shape does a ball have?",
  //   "options": ["Square", "Circle", "Triangle", "Rectangle"],
  //   "answer_index": 1
  // },
  // {
  //   "id": 18,
  //   "subject": "Maths",
  //   "question": "How many sides does a rectangle have?",
  //   "options": ["1", "2", "3", "4"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 19, 
  //   "subject": "Maths",
  //   "question": "How many suns do we have?",
  //   "options": ["1", "4", "3", "5"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 20,
  //   "subject": "Maths",
  //   "question": "___ + 4 = 5?",
  //   "options": ["1", "2", "3", "4"],
  //   "answer_index": 0
  // },




  /////English Questions

  {
    "id": 1,
    "subject": "English",
    "question": "Which letter comes after 'A in the alphabet?",
    "options": ["A", "B", "C", "D"],
    "answer_index": 1
  },
  {
    "id": 2,
    "subject": "English",
    "question": "Which animal says \"Meow\"?",
    "options": ["Dog", "Cat", "Cow", "Duck"],
    "answer_index": 1
  },
  {
    "id": 3,
    "subject": "English",
    "question": "What is the last letter of the alphabet?",
    "options": ["Y", "Z", "A", "K"],
    "answer_index": 1
  },
  {
    "id": 4,
    "subject": "English",
    "question": "Which word rhymes with \"cat\"?",
    "options": ["Bat", "Dog", "Frog", "Fish"],
    "answer_index": 0
  },
  {
    "id": 5,
    "subject": "English",
    "question": "What is the opposite of \"big\"?",
    "options": ["Small", "Tall", "Fast", "Happy"],
    "answer_index": 0
  },
  {
    "id": 6,
    "subject": "English",
    "question": "Are ants big?",
    "options": ["True", "False"],
    "answer_index": 1
  },
  {
    "id": 7,
    "subject": "English",
    "question": "Which word starts with the letter \"B\"?",
    "options": ["Car", "Book", "Sun", "Tree"],
    "answer_index": 1
  },
  {
    "id": 8,
    "subject": "English",
    "question": "What do you use to write with?",
    "options": ["Pencil", "Banana", "Ball", "Shoe"],
    "answer_index": 0
  },
  {
    "id": 9,
    "subject": "English",
    "question": "A lion, a lion has a ____?",
    "options": ["Nose", "Tail", "Leg", "Mouth"],
    "answer_index": 1
  },
  {
    "id": 10,
    "subject": "English",
    "question": "Madam ___ going to school.",
    "options": ["are", "is", "are not", "can"],
    "answer_index": 1
  },
  // {
  //   "id": 11,
  //   "subject": "English",
  //   "question": "Which animal says \"Quack\"?",
  //   "options": ["Cat", "Dog", "Duck", "Cow"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 12,
  //   "subject": "English",
  //   "question": "What color is grass?",
  //   "options": ["Yellow", "Blue", "Green", "Red"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 13,
  //   "subject": "English",
  //   "question": "Which animal barks?",
  //   "options": ["Cat", "Frog", "Bird", "Dog"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 14,
  //   "subject": "English",
  //   "question": "What is the opposite of \"hot\"?",
  //   "options": ["Cold", "Big", "Fast", "Sad"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 15,
  //   "subject": "English",
  //   "question": "What is the opposite of tall?",
  //   "options": ["Short", "Long", "Big", "Fat"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 16,
  //   "subject": "English",
  //   "question": "Which word starts with the letter \"S\"?",
  //   "options": ["Car", "Book", "Sun", "Tree"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 17,
  //   "subject": "English",
  //   "question": "What does a fish do?",
  //   "options": ["It hops", "It jumps", "It flies", "It swims"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 18,
  //   "subject": "English",
  //   "question": "Sandra and Mike are friends. _____ are running to school.",
  //   "options": ["They", "Them", "He", "Her"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 19,
  //   "subject": "English",
  //   "question": "What does a bird do?",
  //   "options": ["It runs", "It flies", "It swims", "It jumps"],
  //   "answer_index": 1
  // },
  // {
  //   "id": 20,
  //   "subject": "English",
  //   "question": "____ is a dog.",
  //   "options": ["He", "Him", "She", "It"],
  //   "answer_index": 3
  // },


  
  //  /////Science Questions
  {
   "id": 1,
    "subject": "Science",
    "question": "What is the color of the sky on a sunny day?",
    "options": ["Red", "Blue", "Green", "Yellow"],
    "answer_index": 1
  },
  {
    "id": 2,
    "subject": "Science",
    "question": "Which animal lays eggs?",
    "options": ["Dog", "Fish", "Cat", "Bird"],
    "answer_index": 3
  },
  {
    "id": 3,
    "subject": "Science",
    "question": "What do plants need to grow?",
    "options": ["Banana", "Water", "Cake", "Shoe"],
    "answer_index": 1
  },
  {
    "id": 4,
    "subject": "Science",
    "question": "What is the source of light during the daytime?",
    "options": ["Moon", "Sun", "Stars", "Lamp"],
    "answer_index": 1
  },
  {
    "id": 5,
    "subject": "Science",   
    "question": "What do we use to see things?",
    "options": ["Ears", "Nose", "Eyes", "Mouth"],
    "answer_index": 2
  },
  {
    "id": 6,
    "subject": "Science",
    "question": "Which animal lives in water?",
    "options": ["Lion", "Tiger", "Fish", "Elephant"],
    "answer_index": 2
  },
  {
    "id": 7,
    "subject": "Science",
    "question": "Which of the following is a fruit?",
    "options": ["Cheese", "Bread", "Apple", "Potato"],
    "answer_index": 2
  },
  { 
    "id": 8,
    "subject": "Science",
    "question": "What season comes after winter?",
    "options": ["Spring", "Summer", "Autumn", "Winter again"],
    "answer_index": 0
  },
  {
    "id": 9,
    "subject": "Science",
    "question": "What animal can swim?",
    "options": ["Fish", "Goat", "Lion", "Butterfly"],
    "answer_index": 0
  },
  {
    "id": 10,
    "subject": "Science",
    "question": "Which animal has feathers?",
    "options": ["Horse", "Lion", "Giraffe", "Bird"],
    "answer_index": 3
  },
  // {
  //   "id": 11,
  //   "subject": "Science", 
  //   "question": "What is the largest planet in our solar system?",
  //   "options": ["Mars", "Earth", "Jupiter", "Saturn"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 12,
  //   "subject": "Science",
  //   "question": "What do we use to know time?",
  //   "options": ["Ruler", "Thermometer", "Clock", "Scale"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 13,
  //   "subject": "Science",
  //   "question": "Which of the following is a natural source of light?",
  //   "options": ["Flashlight", "Candle", "Sun", "Lamp"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 14,
  //   "subject": "Science", 
  //   "question": "What do plants make during the process of photosynthesis?",
  //   "options": ["Oxygen", "Carbon dioxide", "Water", "Sugar"],
  //   "answer_index": 0
  // },
  //  {
  //   "id": 15,
  //   "subject": "Science",
  //   "question": "Are animals living things?",
  //   "options": ["Yes", "No"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 16,
  //   "subject": "Science",
  //   "question": "Which animal can fly?",
  //   "options": ["Kangaroo", "Elephant", "Lion", "Butterfly"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 17,
  //   "subject": "Science",
  //   "question": "Which of the following is a reptile?",
  //   "options": ["Crocodile", "Rabbit", "Hamster", "Guinea pig"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 18,
  //   "subject": "Science",
  //   "question": "Is a book a living thing?",
  //   "options": ["True", "False"],
  //   "answer_index": 1
  // },
  // {
  //   "id": 19,
  //   "subject": "Science",
  //   "question": "What is an example of a non-living thing?",
  //   "options": ["Cat", "Tree", "Watch", "Human"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 20,
  //   "subject": "Science",
  //   "question": "Is Science the study of nature?",
  //   "options": ["True", "False"],
  //   "answer_index": 0
  // },


   /////General Knowledge Questions

  { 
    "id": 1,
    "subject": "General Knowledge",
    "question": "What color is the sky on a rainy day?",
    "options": ["Red", "Blue", "Gray", "Yellow"],
    "answer_index": 2
  },
  {
    "id": 2,
    "subject": "General Knowledge",
    "question": "What is the biggest animal in the world?",
    "options": ["Buffalo", "Elephant", "Horse", "Blue Whale"],
    "answer_index": 3
  },
  {
    "id": 3,
    "subject": "General Knowledge",
    "question": "What is the fastest animal on land?",
    "options": ["Horse", "Cheetah", "Snake", "Ostrich"],
    "answer_index": 1
  },
  {
    "id": 4,
    "subject": "General Knowledge",
    "question": "Which animal lives in water?",
    "options": ["Lion", "Tiger", "Fish", "Elephant"],
    "answer_index": 2
  },
  {
    "id": 5,
    "subject": "General Knowledge",
    "question": "Count the number of fingers on one hand.",
    "options": ["2", "4", "5", "10"],
    "answer_index": 2
  },
  {
    "id": 6,
    "subject": "General Knowledge",
    "question": "What color is a banana?",
    "options": ["Red", "Blue", "Yellow", "Green"],
    "answer_index": 2
  },
  {
    "id": 7,
    "subject": "General Knowledge",
    "question": "Which animal has a long neck?",
    "options": ["Lion", "Elephant", "Giraffe", "Monkey"],
    "answer_index": 2
  },
  {
    "id": 8,
    "subject": "General Knowledge",
    "question": "Which season comes after summer?",
    "options": ["Spring", "Summer", "Autumn", "Winter"],
    "answer_index": 2
  },
  {
    "id": 9,
    "subject": "General Knowledge",
    "question": "What sound does a dog make?",
    "options": ["Meow", "Moo", "Woof", "Quack"],
    "answer_index": 2
  },
  {
    "id": 10,
    "subject": "General Knowledge",
    "question": "What shape does a television have?",
    "options": ["Circle", "Square", "Triangle", "Rectangle"],
    "answer_index": 3
  },
  // {  
  //   "id": 11,
  //   "subject": "General Knowledge",
  //   "question": "Which animal says Ribbit?",
  //   "options": ["Cat", "Dog", "Duck", "Frog"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 12,
  //   "subject": "General Knowledge",
  //   "question": "What color is grass?",
  //   "options": ["Yellow", "Blue", "Green", "Red"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 13,
  //   "subject": "General Knowledge",
  //   "question": "How many legs does a bird have?",
  //   "options": ["2", "4", "6", "8"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 14,
  //   "subject": "General Knowledge",
  //   "question": "Which animal lives in bushes?",
  //   "options": ["Lion", "Penguin", "Shark", "Rabbit"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 15,
  //   "subject": "General Knowledge",
  //   "question": "Which season is known for falling leaves?",
  //   "options": ["Spring", "Summer", "Autumn", "Winter"],
  //   "answer_index": 2
  // },
  // { 
  //   "id": 16,
  //   "subject": "General Knowledge",
  //   "question": "What sound does a cow make?",
  //   "options": ["Meow", "Moo", "Woof", "Quack"],
  //   "answer_index": 1
  // },
  // {
  //   "id": 17,
  //   "subject": "General Knowledge",
  //   "question": "What is the name of the planet we live on??",
  //   "options": ["Venus", "Moon", "Earth", "Mars"],
  //   "answer_index": 2
  // },
  // {
  //   "id": 18,
  //   "subject": "General Knowledge",
  //   "question": "Which animal has stripes?",
  //   "options": ["Lion", "Elephant", "Giraffe", "Zebra"],
  //   "answer_index": 3
  // },
  // {
  //   "id": 19,
  //   "subject": "General Knowledge",
  //   "question": "What color are strawberries?",
  //   "options": ["Red", "Blue", "Yellow", "Green"],
  //   "answer_index": 0
  // },
  // {
  //   "id": 20,
  //   "subject": "General Knowledge",
  //   "question": "What is the capital of Ghana?",
  //   "options": ["Kumasi", "Koforidua", "Cape Coast", "Accra"],
  //   "answer_index": 3
  // },
];
