import 'package:FunQuiz/models/Questions.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:FunQuiz/constants.dart'; // Importing custom constants from another file
import 'package:FunQuiz/controllers/question_controller.dart'; // Importing the QuestionController
import 'package:flutter_svg/svg.dart'; // Importing the SVG package for SVG image rendering

import 'progress_bar.dart'; // Importing the ProgressBar widget to show the time progress
import 'question_card.dart'; // Importing the QuestionCard widget to display individual questions

class Body extends StatelessWidget {
  const Body({
    required Key key, required List<Question> questions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
      AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        );
    // So that we have access to our controller
    QuestionController _questionController = Get.put(QuestionController(questions: [])); // Initializing the QuestionController using GetX

    return Stack(
      children: [
        SvgPicture.asset("assets/icons/pic 1.svg", fit: BoxFit.fill), // Display the background image using SvgPicture
        SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: ProgressBar(
                  key: UniqueKey(), // Add the key parameter here to ensure proper widget rebuilding when needed
                  totalQuestions: _questionController.questions.length, // Pass the total number of questions to the ProgressBar
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Obx(
                  () => Text.rich(
                    TextSpan(
                      text: "Question ${_questionController.questionNumber.value}", // Display the current question number
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(color: kSecondaryColor), // Apply the titleLarge theme with the custom kSecondaryColor
                      children: [
                        TextSpan(
                          text: "/${_questionController.questions.length}", // Display the total number of questions
                          style: Theme.of(context)
                              .textTheme
                              .titleSmall!
                              .copyWith(color: kSecondaryColor), // Apply the titleSmall theme with the custom kSecondaryColor
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Divider(thickness: 1.5), // Add a horizontal line to separate the question number and the question card
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: PageView.builder(
                  // Block swipe to the next question, so users can't manually skip questions
                  physics: NeverScrollableScrollPhysics(),
                  controller: _questionController.pageController, // Use the page controller from the QuestionController
                  onPageChanged: _questionController.updateTheQnNum, // Call updateTheQnNum method when the page changes (for question number update)
                  itemCount: _questionController.questions.length, // Total number of questions
                  itemBuilder: (context, index) => QuestionCard(
                    key: UniqueKey(), // Generate a unique key for each question card to ensure proper widget rebuilding
                    question: _questionController.questions[index], // Pass the current question object to the QuestionCard
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
