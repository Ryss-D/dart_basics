import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import './widgets/user_transactions.dart';
import './widgets/new_transaction.dart';
import '../widgets/transaction_list.dart'; // this package has a util functionality to translate hours form diferetn time lines

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Expenses App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //String? titleInput;
  //String? amountInput;
  //final titleController = TextEditingController();
  //final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expenses App"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Container(
              width: double.infinity,
              child: Card(
                elevation: 5,
                child: Text('Chart'),
              ),
            ),
            UserTransactions(),
          ],
        ),
      ),
    );
  }
}
