import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';
import './chart_bar.dart';

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
    }).reversed.toList();
  }

  double get totalSpending {
    return groupedTransactionsValues.fold(0.0, (sum, item) {
      return sum + (item['amount'] as double);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: EdgeInsets.all(20),
      child: Padding(
        //pading is a container who only can have padding
        padding: EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: groupedTransactionsValues.map(
            (sTx) {
              //expanded = Flexible(fit:FlexFit.tight, and just acept flex: argument)
              return Flexible(
                fit: FlexFit.tight,
                child: ChartBar(
                  label: sTx['day'].toString(),
                  spendingAmount: sTx['amount'] as double,
                  spendingPercentageTotal: totalSpending == 0.0
                      ? 0.0
                      : (sTx['amount'] as double) / totalSpending,
                ),
              );
            },
          ).toList(),
        ),
      ),
    );
  }
}
