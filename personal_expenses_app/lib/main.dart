import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // this package has a util functionality to translate hours form diferetn time lines

import './transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', title: 'New Tshirt', amount: 9.9, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Shoes', amount: 69.9, date: DateTime.now()),
    Transaction(
        id: 't3', title: 'New Pants', amount: 89.9, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expenses App"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            width: double.infinity,
            child: Card(
              elevation: 5,
              child: Text('Chart'),
            ),
          ),
          Card(
            child: Text('List of TX'),
          ),
          Column(
              children: transactions.map(
            (tx) {
              return Card(
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(
                          vertical: 10,
                          horizontal: 15,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: Colors.purple,
                            width: 2,
                          ),
                        ),
                        padding: EdgeInsets.all(10),
                        child: Text(
                          '\$${tx.amount.toString()}',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.grey),
                        ),
                      ),
                      Card(
                        elevation: 5,
                        child: Container(
                          padding: EdgeInsets.all(10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              TextField(
                                decoration: InputDecoration(labelText: 'Title'),
                              ),
                              TextField(
                                decoration:
                                    InputDecoration(labelText: 'Amount'),
                              ),
                              TextButton(
                                child: Text('Add transaction'),
                                //style: color text purple,
                                onPressed: null,
                              )
                            ],
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            DateFormat('dd-MM-yyyy H:mm').format(tx.date),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ]),
              );
            },
          ).toList()),
        ],
      ),
    );
  }
}
