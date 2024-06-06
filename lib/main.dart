import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'screens/loginscreen.dart';

 main()  { 

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'FunQuiz', // Title that appears in the app switcher
      debugShowCheckedModeBanner: false, // Disables the debug banner in the top-right corner
      theme: ThemeData.dark(), // Applies a dark theme to the entire app
       home: LoginScreen(), // Set the initial screen to LoginScreen
    );
  }
}