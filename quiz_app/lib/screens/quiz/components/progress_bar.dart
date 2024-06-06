import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:FunQuiz/controllers/question_controller.dart'; // Importing the QuestionController
import 'package:flutter_svg/svg.dart'; // Importing the SVG package for SVG image rendering

import '../../../constants.dart'; // Importing custom constants from another file

class ProgressBar extends StatelessWidget {
  const ProgressBar({
    required Key key,
    required int totalQuestions, // Total number of questions in the quiz
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity, // Take the full available width
      height: 35, // Fixed height for the progress bar
      decoration: BoxDecoration(
        border: Border.all(color: Color(0xFF3F4768), width: 3), // Border around the progress bar
        borderRadius: BorderRadius.circular(50), // Rounded corners for the progress bar
      ),
      child: GetBuilder<QuestionController>(
        init: QuestionController(questions: []), // Initializing the QuestionController using GetX
        builder: (controller) {
          return Stack(
            children: [
              // LayoutBuilder provides the available space for the container
              // constraints.maxWidth is needed for our animation
              LayoutBuilder(
                builder: (context, constraints) => Container(
                  // The width of the gradient container is animated from 0 to 1
                  width: constraints.maxWidth * controller.animation.value,
                  decoration: BoxDecoration(
                    gradient: kPrimaryGradient, // Apply the primary gradient defined in constants.dart
                    borderRadius: BorderRadius.circular(50), // Rounded corners for the gradient container
                  ),
                ),
              ),
              Positioned.fill(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("${(controller.animation.value * 60).round()} sec"),
                      // Display the time remaining (animation.value is a fraction from 0 to 1, representing progress)
                      SvgPicture.asset("assets/icons/clock.svg"), // Display a clock icon using SVG
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
