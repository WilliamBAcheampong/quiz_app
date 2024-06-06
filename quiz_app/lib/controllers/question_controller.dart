import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
//import 'package:FunQuiz/models/question.dart'; // Importing the Question model class
import 'package:FunQuiz/screens/score/score_screen.dart'; // Importing the ScoreScreen
import 'package:FunQuiz/screens/welcome/welcome_screen.dart';

import '../models/Questions.dart'; // Importing the WelcomeScreen
// We use Get package for our state management

// ignore: deprecated_member_use
class QuestionController extends GetxController with SingleGetTickerProviderMixin {
  late AnimationController _animationController;
  late Animation _animation;

  static var to;
  // So that we can access our animation outside
  Animation get animation => this._animation;

  late PageController _pageController;
  PageController get pageController => this._pageController;

  List<Question> _questions = [];
  List<Question> get questions => this._questions;

  bool _isAnswered = false;
  bool get isAnswered => this._isAnswered;

  late int _correctAns;
  int get correctAns => this._correctAns;

  late int _selectedAns;
  int get selectedAns => this._selectedAns;

  // For more about Rx (reactive programming) please check the documentation
  RxInt _questionNumber = 1.obs;
  RxInt get questionNumber => this._questionNumber;

  int _numOfCorrectAns = 0;
  int get numOfCorrectAns => this._numOfCorrectAns;

  // Constructor to accept the list of questions
  QuestionController({required List<Question> questions}) {
    _questions = questions;
  }

  // Called immediately after the widget is allocated memory
  @override
  void onInit() {
    // Our animation duration is 10s
    // So our plan is to fill the progress bar within 60s
    _animationController =
        AnimationController(duration: Duration(seconds: 10), vsync: this);
    _animation = Tween<double>(begin: 0, end: 1).animate(_animationController)
      ..addListener(() {
        // Update like setState
        update();
      });

    // Start our animation
    // Once 60s is completed, go to the next question
    _animationController.forward().whenComplete(nextQuestion);
    _pageController = PageController();
    super.onInit();
  }

  // Called just before the Controller is deleted from memory
  @override
  void onClose() {
    super.onClose();
    _animationController.dispose();
    _pageController.dispose();
  }

  // Method to check the selected answer against the correct answer
  void checkAns(Question question, int selectedIndex) {
    // Because once the user presses any option, it will run
    _isAnswered = true;
    _correctAns = question.answer;
    _selectedAns = selectedIndex;

    if (_correctAns == _selectedAns) _numOfCorrectAns++;

    // It will stop the counter
    _animationController.stop();
    update();

    // Once the user selects an answer, after 1 second, it will go to the next question
    Future.delayed(Duration(seconds: 1), () {
      nextQuestion();
    });
  }

  // Method to navigate to the next question or show the score screen
  void nextQuestion() {
    if (_questionNumber.value != _questions.length) {
      _isAnswered = false;
      _pageController.nextPage(
          duration: Duration(milliseconds: 250), curve: Curves.ease);

      // Reset the counter
      _animationController.reset();

      // Then start it again
      // Once the timer is finished, go to the next question
      _animationController.forward().whenComplete(nextQuestion);
    } else {
      // Get package provides us a simple way to navigate to another page (ScoreScreen)
      Get.to(ScoreScreen(resetHandler: () => _resetQuiz(), questions: [],));
    }
  }

  // Method to update the current question number
  void updateTheQnNum(int index) {
    _questionNumber.value = index + 1;
  }

  // Method to reset the quiz and navigate back to the WelcomeScreen
  void _resetQuiz() {
    _questionNumber.value = 1;
    _numOfCorrectAns = 0;
    _isAnswered = false;
    _pageController.jumpToPage(0); // Reset page controller to the first question
    _animationController.reset();
    _animationController.forward().whenComplete(nextQuestion);
    Get.offAll(WelcomeScreen()); // Use Get.offAll to remove previous routes and navigate back to the WelcomeScreen
  }
}
