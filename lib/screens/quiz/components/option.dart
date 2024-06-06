import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:FunQuiz/controllers/question_controller.dart'; // Importing the QuestionController
import '../../../constants.dart'; // Importing custom constants from another file

class Option extends StatelessWidget {
  const Option({
    required Key key,
    required this.text, // The text of the option
    required this.index, // The index of the option in the list of options
    required this.press, // Callback function to handle option selection
  }) : super(key: key);

  final String text; // The text of the option
  final int index; // The index of the option in the list of options
  final VoidCallback press; // Callback function to handle option selection

  @override
  Widget build(BuildContext context) {
    return GetBuilder<QuestionController>(
      init: QuestionController(questions: []), // Initializing the QuestionController using GetX
      builder: (qnController) {
        // Function to get the color of the option based on its state
        Color getTheRightColor() {
          if (qnController.isAnswered) {
            if (index == qnController.correctAns) {
              return kGreenColor; // Option is correct (green)
            } else if (index == qnController.selectedAns &&
                qnController.selectedAns != qnController.correctAns) {
              return kRedColor; // Option is selected but incorrect (red)
            }
          }
          return kGrayColor; // Option is not selected or not yet answered (gray)
        }

        // Function to get the icon representing the option state
        IconData getTheRightIcon() {
          return getTheRightColor() == kRedColor ? Icons.close : Icons.done; // Display close icon for incorrect options, done icon for correct options
        }

        return InkWell(
          onTap: press, // Call the provided press function when the option is tapped
          child: Container(
            margin: EdgeInsets.only(top: kDefaultPadding), // Apply top margin
            padding: EdgeInsets.all(kDefaultPadding), // Apply padding inside the container
            decoration: BoxDecoration(
              border: Border.all(color: getTheRightColor()), // Border around the option
              borderRadius: BorderRadius.circular(15), // Rounded corners for the option container
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "${index + 1}. $text", // Display the option text with a bullet point or number before it
                  style: TextStyle(color: Colors.black, fontSize: 16), // Custom style for the option text
                ),
                Container(
                  height: 26,
                  width: 26,
                  decoration: BoxDecoration(
                    color: getTheRightColor() == kGrayColor
                        ? const Color.fromARGB(0, 12, 11, 11) // Gray color for the option container if not selected
                        : getTheRightColor(), // Use the determined color based on the option state
                    borderRadius: BorderRadius.circular(50), // Rounded corners for the icon container
                    border: Border.all(color: getTheRightColor()), // Border around the icon container
                  ),
                  child: getTheRightColor() == kGrayColor
                      ? null // No icon is displayed if the option is not selected
                      : Icon(getTheRightIcon(), size: 16), // Display the icon indicating the option state
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
