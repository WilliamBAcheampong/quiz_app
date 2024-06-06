import 'package:flutter/material.dart';

// Define custom colors using hexadecimal color values
const kSecondaryColor = Color(0xFF8B94BC); // A shade of purple for secondary elements
const kGreenColor = Color(0xFF6AC259); // A shade of green for positive elements
const kRedColor = Color(0xFFE92E30); // A shade of red for negative elements
const kGrayColor = Color(0xFFC1C1C1); // A shade of gray for neutral elements
const kBlackColor = Color(0xFF101010); // A shade of black for primary elements

// Define a primary gradient using two colors for background or other UI elements
const kPrimaryGradient = LinearGradient(
  colors: [Color(0xFF46A0AE), Color(0xFF00FFCB)], // A gradient that transitions from a teal-like color to a light blue
  begin: Alignment.centerLeft, // The starting point of the gradient (center-left)
  end: Alignment.centerRight, // The ending point of the gradient (center-right)
);

// Define a default padding value to be used for consistent spacing between UI elements
const double kDefaultPadding = 20.0; // A default padding of 20.0 logical pixels
