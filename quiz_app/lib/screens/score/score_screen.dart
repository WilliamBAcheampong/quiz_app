import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FunQuiz/controllers/question_controller.dart'; // Importing the QuestionController
import 'package:flutter_svg/svg.dart';

import '../../models/Questions.dart'; // Importing the SVG package for SVG image rendering

class ScoreScreen extends StatelessWidget {
  final Function resetHandler; // Callback function to handle quiz reset
  final List<Question> questions; // List of questions

  ScoreScreen({required this.resetHandler, required this.questions});

  @override
  Widget build(BuildContext context) {
    QuestionController _qnController = Get.put(QuestionController(questions: [])); // Initializing the QuestionController using GetX
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          SvgPicture.asset("assets/icons/images_adobe_express (3).svg", fit: BoxFit.fill), // Display the background image using SvgPicture
          Column(
            children: [
              Spacer(flex: 2), // Spacer that takes 2/10 of the available vertical space
              Text(
                "HURRAY!!!\n"
                 "  Score is", // Display the title "HURRAY" and "Score"
                style: Theme.of(context)
                    .textTheme
                    .headlineLarge!
                    .copyWith(color: Colors.blue, // Apply the headlineLarge theme with the blue
                    fontSize: 50,
                    )
              ),
              Spacer(), // Spacer that takes 1/10 of the available vertical space
             Text(
                "${_qnController.numOfCorrectAns}/${_qnController.questions.length}",
                 style: Theme.of(context).textTheme.displayLarge!.copyWith(
                 color: Color.fromARGB(255, 18, 19, 18), // Custom color
                 fontSize: 60,
                 fontWeight: FontWeight.bold // Font weight
                 ),
              ),

              Spacer(flex: 9), // Spacer that takes 9/10 of the available vertical space
             Container(
  alignment: Alignment.center,
  padding: EdgeInsets.symmetric(vertical: 20),
  child: TextButton(
    style: TextButton.styleFrom(
      foregroundColor: Color.fromARGB(255, 209, 23, 23), // Set the foreground color of the button
    ),
    onPressed: () => resetHandler(), // Call the resetHandler function when the button is pressed
    child: const Text(
      'Restart Quiz!', // Display the text "Restart Quiz!" on the button
      style: TextStyle(fontSize: 36,),
                  ),   
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
