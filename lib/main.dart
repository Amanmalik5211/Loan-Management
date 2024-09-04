import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/loan_management_page.dart';
import 'pages/loan_application_page.dart'; // Import the LoanApplicationPage

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'User Module',
      theme: ThemeData(
        primarySwatch: Colors.purple,
        fontFamily: 'Roboto',
        visualDensity: VisualDensity.adaptivePlatformDensity, // Consistent padding across platforms
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.purple, // Consistent AppBar color
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'Roboto',
          ),
        ),
        buttonTheme: ButtonThemeData(
          buttonColor: Colors.purple, // Consistent button color
          textTheme: ButtonTextTheme.primary, // Ensures appropriate text color for buttons
        ),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/loan-management': (context) => LoanManagementPage(),
        '/loan-application': (context) => LoanApplicationPage(), // Add route for LoanApplicationPage
      },
      debugShowCheckedModeBanner: false, // Disable debug banner
    );
  }
}
