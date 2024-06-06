import 'package:flutter/material.dart';
import '../controllers/question_controller.dart';
import '../models/Questions.dart';
import 'quiz/quiz_screen.dart'; // Import the Question model

class MathsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the list of Maths questions from the QuestionController
    List<Question> mathsQuestions = QuestionController.to.questionsForSubject('Maths');

    return Scaffold(
      appBar: AppBar(
        title: Text('Maths Quiz'),
      ),
      body: QuizScreen(questions: mathsQuestions), // Pass the Maths questions to the QuizScreen
    );
  }
}
