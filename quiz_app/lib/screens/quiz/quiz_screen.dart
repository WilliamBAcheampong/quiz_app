import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/question_controller.dart';

import '../../models/Questions.dart';
import 'components/body.dart'; // Importing the Body widget where the quiz content is defined

class QuizScreen extends StatelessWidget {
  final List<Question> questions;

  QuizScreen({required this.questions});

  @override
  Widget build(BuildContext context) {
     QuestionController _controller = Get.put(QuestionController(questions: questions)); // Initializing the QuestionController using GetX with the filtered questions
    return Scaffold(
      extendBodyBehindAppBar: true, // Extend the body behind the app bar to have a transparent app bar
      appBar: AppBar(
        // AppBar at the top of the screen
        backgroundColor: Colors.transparent, // Transparent app bar background
        elevation: 0, // No elevation (shadow) for the app bar
        actions: [
          TextButton(onPressed: _controller.nextQuestion, child: Text("Skip")), // Button to skip to the next question
        ],
      ),
      body: Body(key: UniqueKey(), questions: questions,), // The main content of the quiz is in the Body widget, and a UniqueKey is provided for proper widget rebuild
    );
  }
}
