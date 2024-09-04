import 'package:flutter/material.dart';

class LoanDetailPage extends StatelessWidget {
  final String loanId;
  final String assetName;

  const LoanDetailPage({
    required this.loanId,
    required this.assetName,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, String> loanDetails = {
      'Loan ID': loanId,
      'Asset Name': assetName,
      'Status': 'Approved',
      'Amount': '₹ 5,00,000',
      'Borrower Name': 'John Doe',
      'Interest Rate': '8%',
      'Term': '5 years',
      'Approval Date': '01 Jan 2024',
    };

    return Scaffold(
      appBar: AppBar(
        title: Text('Loan Details'),
        backgroundColor: Colors.purple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: loanDetails.entries.map((entry) {
            return Card(
              margin: EdgeInsets.only(bottom: 16),
              child: ListTile(
                title: Text(entry.key),
                subtitle: Text(entry.value),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}
