import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:FunQuiz/screens/quiz/quiz_screen.dart'; // Import the QuizScreen
import '../models/Questions.dart'; // Import the Question model

class SubjectSelectionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select a Subject'), // App bar title
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset(
            "assets/icons/images_adobe_express (2).svg",
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () => _startQuiz('Maths'),
                  child: Text('Maths'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Color.fromARGB(255, 66, 236, 236),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () => _startQuiz('English'),
                  child: Text('English'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () => _startQuiz('Science'),
                  child: Text('Science'),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 15),
                    backgroundColor: Color.fromARGB(255, 66, 236, 236),
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () => _startQuiz('General Knowledge'),
                  child: Text('General Knowledge'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Function to start the quiz with the selected subject
  void _startQuiz(String subject) {
    List<Question> questions = _getQuestionsForSubject(subject);
    if (questions.isNotEmpty) {
      Get.to(QuizScreen(questions: questions));
    } else {
      print('No questions available for the selected subject.');
    }
  }

  // Function to get the questions for the selected subject
  List<Question> _getQuestionsForSubject(String subject) {
    // Assuming you have a list of all questions in the 'sample_data' list
    List<Question> allQuestions = sample_data
        .map((question) => Question(
              id: question['id'],
              subject: question['subject'], 
              question: question['question'],
              options: question['options'],
              answer: question['answer_index'],
            ))
        .toList();

    // Filter the questions based on the selected subject
    List<Question> questionsForSubject =
        allQuestions.where((question) => question.subject == subject).toList();

    return questionsForSubject;
  }
}
