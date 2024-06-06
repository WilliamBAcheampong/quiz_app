import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'welcome/welcome_screen.dart'; // Import the WelcomeScreen

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  bool _invalidCredentials = false;
  bool _isNumericError = false; // New flag for numeric error

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Display the wallpaper image as the background using SvgPicture
          SvgPicture.asset("assets/icons/pic 2.svg", fit: BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Username field
                  TextField(
                    controller: _usernameController,
                    style: TextStyle(color: Colors.black), // Set text color to black
                    decoration: InputDecoration(
                      labelText: 'Username',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Set border color to black
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                      ),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _isNumericError = false; // Reset numeric error flag
                      });
                    },
                  ),
                  SizedBox(height: 20),
                  // Password field
                  TextField(
                    controller: _passwordController,
                    obscureText: true, // Set this to obscure the password
                    style: TextStyle(color: Colors.black), // Set text color to black
                    decoration: InputDecoration(
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                      ),
                      border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black), // Set border color to black
                      ),
                       enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black),
                       ),
                    ),
                  ),
                  SizedBox(height: 20),
                  if (_invalidCredentials)
                    Text(
                      'Invalid login credentials.',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                      
                    ),
                  if (_isNumericError) // Display numeric error message
                    Text(
                      'Username cannot be numeric.',
                      style: TextStyle(color: Color.fromARGB(255, 0, 0, 0)),
                    ),
                  SizedBox(height: 20),
                  ElevatedButton(          
                  onPressed: () {
                   // Simulate a login check
                    _checkLogin();
                   },
                   style: ElevatedButton.styleFrom(
                   padding: EdgeInsets.all(15), // Increase padding for larger button
                   foregroundColor: Colors.black, // Set the text color to black
                   backgroundColor: Colors.blue, // Set the background color to black
                   ),
                  child: Text('Log In'),
                  ),

                  SizedBox(height: 10), // Add space between buttons
                    ElevatedButton(
                     onPressed: () {
                     // Handle registration button press
                   },
                  style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(15), // Increase padding for larger button
                  foregroundColor: Colors.black, // Set the text color to black
                  backgroundColor: Colors.blue, // Set the background color to black
                  ),
                  child: Text('Register'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Function to simulate login check
  void _checkLogin() {
    // Replace with your actual login validation logic
    String username = _usernameController.text;
    String password = _passwordController.text;

    // Check if username and password match
    if (username == "William" && password == "1234") {
      _onLoginSuccess();
    } else {
      setState(() {
        _invalidCredentials = true;
      });
    }
    
    // Check if username is numeric
    try {
      int.parse(username);
      setState(() {
        _isNumericError = true;
      });
    } catch (e) {
      // Do nothing if username is not numeric
    }
  }

  // Function to execute after successful login
  void _onLoginSuccess() {
    Get.off(WelcomeScreen()); // Move to the WelcomeScreen
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
