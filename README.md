# Flutter Calculator App

A simple calculator application built with Flutter. The app includes basic mathematical operations and a user-friendly interface with an attractive design. This project serves as a beginner-friendly example for learning Flutter layouts, button widgets, and handling user input.

## Features
Basic Operations: Perform addition, subtraction, multiplication, and division.
Clear Input: Reset the calculator using the AC button.
Toggle Sign: Change the sign of numbers using the +/- button.
Percentage Calculation: Easily calculate percentages.
Delete: Remove the last character of the input using the DEL button.
Decimal Support: Perform calculations with decimal values.
Real-time Evaluation: See the result instantly when pressing the = button.
Responsive Design: Adapts to different screen sizes.

## Screenshots

### Initial
![screenshots](https://github.com/JarrarShahid/calculator-app/blob/main/Assets/Initial.jpg)
### addition
![screenshots](https://github.com/JarrarShahid/calculator-app/blob/main/Assets/addition.jpg)
### Subtraction
![screenshots](https://github.com/JarrarShahid/calculator-app/blob/main/Assets/subtraction.jpg)
### Multiplication
![screenshots](https://github.com/JarrarShahid/calculator-app/blob/main/Assets/multiplication.jpg)
### Division
![screenshots](https://github.com/JarrarShahid/calculator-app/blob/main/Assets/division.jpg)
### Percentage
![screenshots](https://github.com/JarrarShahid/calculator-app/blob/main/Assets/percentage.jpg)
### Decimal
![screenshots](https://github.com/JarrarShahid/calculator-app/blob/main/Assets/decimal.jpg)

## Getting Started

### Prerequisites
Flutter SDK
IDE like Android Studio or VS Code

Installation
1. Clone the Repository
 
git clone https://github.com/JarrarShahid/calculator-app.git
cd flutter_calculator_app

2. Install Dependencies

Navigate to the project directory and install the necessary packages:
flutter pub get

3. Run the App
flutter run

Ensure your device (emulator or physical device) is connected and recognized by Flutter.

## Project Structure
main.dart: Entry point of the application.
home_screen.dart: Contains the UI and main functionality of the calculator.
my_button.dart: A reusable widget for the calculator buttons.
constant.dart: Contains constants for styling and color values.

## Code Overview
main.dart
This file initializes the app and sets up the home screen.

void main() {
  runApp(const MyApp());
}

home_screen.dart
The main screen of the app. It contains the calculator layout and logic to handle button presses.

my_button.dart
Defines the MyButton widget, which is used to create calculator buttons with customizable labels, colors, and actions.

constant.dart
Defines common styling constants like colors and text styles.

## How to Use
1. Basic Operations: Tap the numeric buttons to input values and the operator buttons (+, -, x, /) to perform calculations.
2. Toggle Sign: Tap +/- to change the sign of the current input.
3. Percentage: Tap % to apply percentage calculations.
4. Clear All: Tap AC to reset the calculator.
5. Delete Last Character: Tap DEL to remove the last character in the input field.
6. Equals: Tap = to evaluate the entered expression.

## Dependencies
math_expressions: For parsing and evaluating mathematical expressions.

## Contributing
Contributions are welcome! If you have suggestions or improvements, feel free to create a pull request or open an issue.

License
This project is licensed under the MIT License. 
















































