import 'package:flutter/material.dart';
import 'loan_detail_page.dart';

class LoanManagementPage extends StatelessWidget {
  final List<Map<String, String>> loans = [
    {'id': '89453', 'assetName': 'House'},
    {'id': '89454', 'assetName': 'Car'},
    {'id': '89455', 'assetName': 'Business'},
    {'id': '89456', 'assetName': 'Land'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Loan Management'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: loans.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoanDetailPage(
                      loanId: loans[index]['id']!,
                      assetName: loans[index]['assetName']!,
                    ),
                  ),
                );
              },
              child: Card(
                elevation: 4,
                shadowColor: Colors.black54, 
                margin: EdgeInsets.only(bottom: 16),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15), 
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Loan Id: ${loans[index]['id']}',
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.purple[900],
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        'Asset Name: ${loans[index]['assetName']}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
