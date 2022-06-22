import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransacionts;

  Chart(this.recentTransacionts);

  List<Map<String, Object>> get groupedTransactionsValues {
    return List.generate(7, (index) {
      final weekDay = DateTime.now().subtract(
        Duration(
          days: index,
        ),
      );

      var totalSum = 0.0;

      for (var i = 0; i < recentTransacionts.length; i++) {
        if (recentTransacionts[i].date.day == weekDay.day &&
            recentTransacionts[i].date.month == weekDay.month &&
            recentTransacionts[i].date.year == weekDay.year) {
          totalSum += recentTransacionts[i].amount;
        }
      }

      return {
        'day': DateFormat.E().format(weekDay).substring(0, 1),
        'amount': totalSum
      };
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Row(
        children: groupedTransactionsValues.map(
          (sTx) {
            return Text('${sTx['day']} : ${sTx['amount']}');
          },
        ).toList(),
      ),
    );
  }
}
