import 'package:flutter/material.dart';
import '../controllers/question_controller.dart';
import '../models/Questions.dart';
import 'quiz/quiz_screen.dart'; // Import the Question model

class GeneralKnowledgeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Get the list of General Knowledge questions from the QuestionController
    List<Question> gkQuestions = QuestionController.to.questionsForSubject('General Knowledge');

    return Scaffold(
      appBar: AppBar(
        title: Text('General Knowledge Quiz'),
      ),
      body: QuizScreen(questions: gkQuestions), // Pass the General Knowledge questions to the QuizScreen
    );
  }
}
