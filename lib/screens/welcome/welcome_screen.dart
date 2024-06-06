import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../constants.dart';
import '../subjectselectionscreen.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Display the wallpaper image as the background using SvgPicture
          SvgPicture.asset("assets/icons/pic.svg", fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Spacer(flex: 2), // Spacer that takes 2/6 of the available space
                  Center(
                    child: Text(
                      "Welcome, Wiliam!", 
                      style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                            color: const Color.fromARGB(255, 36, 11, 11),
                            fontWeight: FontWeight.bold,
                          ),
                    ),
                  ),
                  Spacer(), // Spacer that takes 1/6 of the available space
                  InkWell(
                    onTap: () => Get.to(SubjectSelectionScreen()), // Navigate to the SubjectSelectionScreen when the "Start Quiz" button is pressed
                    child: Container(
                      width: double.infinity,
                      alignment: Alignment.center,
                      padding: EdgeInsets.all(kDefaultPadding * 0.75),
                      decoration: BoxDecoration(
                        gradient: kPrimaryGradient,
                        borderRadius: BorderRadius.all(Radius.circular(12)),
                      ),
                      child: Text(
                        "Start Quiz",
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                  Spacer(flex: 12), // Spacer 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
} 