import 'package:flutter/material.dart';
import '../controllers/question_controller.dart';
import '../models/Questions.dart';
import 'quiz/quiz_screen.dart'; // Import the Question model

class ScienceScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the list of Science questions from the QuestionController
    List<Question> scienceQuestions = QuestionController.to.questionsForSubject('Science');

    return Scaffold(
      appBar: AppBar(
        title: Text('Science Quiz'),
      ),
      body: QuizScreen(questions: scienceQuestions), // Pass the Science questions to the QuizScreen
    );
  }
}
