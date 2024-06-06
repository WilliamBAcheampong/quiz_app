import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FunQuiz/controllers/question_controller.dart'; // Importing the QuestionController
import 'package:FunQuiz/models/Questions.dart'; // Importing the Question model
import '../../../constants.dart'; // Importing custom constants from another file
import 'option.dart'; // Importing the Option widget, which represents each quiz option

class QuestionCard extends StatelessWidget {
  const QuestionCard({
    required Key key,
    // it means we have to pass this
    required this.question, // The Question object to display in the card
  }) : super(key: key);

  final Question question; // The Question object to display

  @override
  Widget build(BuildContext context) {
    QuestionController _controller = Get.put(QuestionController(questions: [])); // Initializing the QuestionController using GetX
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding), // Apply horizontal margin
      padding: EdgeInsets.all(kDefaultPadding), // Apply padding inside the container
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 9, 97, 100), // Set the background color of the container
        borderRadius: BorderRadius.circular(25), // Apply rounded corners to the container
      ),
      child: Column(
        children: [
          Text(
            question.question, // Display the question text
            style: Theme.of(context)
                .textTheme
                .titleLarge!
                .copyWith(color: kBlackColor), // Apply the titleLarge theme with the custom kBlackColor
          ),
          SizedBox(height: kDefaultPadding / 2), // Add a small space between the question and options
          ...List.generate(
            question.options.length,
            (index) =>  Option(
              key: UniqueKey(),
              index: index,
              text: question.options[index], // Display the option text
              press: () => _controller.checkAns(question, index), // Call the checkAns method with the selected option index
            ),
          ),
        ],
      ),
    );
  }
}
