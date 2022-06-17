import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount < 0) {
      return;
    }
    addTx(enteredTitle, enteredAmount);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              //onChanged: (value) {
              //titleInput = value;
              //},
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              //onChanged: (value) {
              //amountInput = value;
              //},
              controller: amountController,
              keyboardType: TextInputType.numberWithOptions(decimal: true),
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              child: Text('Add transaction'),
              //style: color text purple,
              onPressed: submitData,
            ),
          ],
        ),
      ),
    );
  }
}
