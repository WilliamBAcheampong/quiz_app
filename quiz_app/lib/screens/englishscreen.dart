import 'package:flutter/material.dart';
import '../controllers/question_controller.dart';
import '../models/Questions.dart';
import 'quiz/quiz_screen.dart'; // Import the Question model

class EnglishScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the list of English questions from the QuestionController
    List<Question> englishQuestions = QuestionController.to.questionsForSubject('English');

    return Scaffold(
      appBar: AppBar(
        title: Text('English Quiz'),
      ),
      body: QuizScreen(questions: englishQuestions), // Pass the English questions to the QuizScreen
    );
  }
}
