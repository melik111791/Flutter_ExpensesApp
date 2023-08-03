import 'package:flutter/material.dart';

void AddBillMessage(BuildContext context) {
  final snackBar = SnackBar(
    content: Text(
      'You Added Bill Expense!',
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.lightGreen,
    duration: Duration(seconds: 1),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
