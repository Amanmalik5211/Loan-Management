import 'package:flutter/material.dart';
import 'dashboard_page.dart';
import 'profile_management_page.dart';
import 'loan_management_page.dart';
import 'payment_page.dart';
import 'loan_application_page.dart'; // Import the LoanApplicationPage

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Module'),
        backgroundColor: Colors.purple,
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.purple,
              ),
              child: Text(
                'User Module',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => UserProfilePage()), // Navigate to UserProfilePage
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.dashboard),
              title: Text('Dashboard'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DashboardScreen()), // Navigate to DashboardScreen
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.monetization_on),
              title: Text('Loan Management'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoanManagementPage()), // Navigate to LoanManagementPage
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.add_box),
              title: Text('Apply for Loan'), // New item for loan application
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoanApplicationPage()), // Navigate to LoanApplicationPage
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Payment'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PaymentPage()), // Navigate to PaymentPage
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.collections),
              title: Text('Collections'),
              onTap: () {
                // Handle Collections tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.report),
              title: Text('Report'),
              onTap: () {
                // Handle Report tap
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                // Handle Logout tap
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Welcome to the User Module'),
      ),
    );
  }
}
