import 'package:flutter/material.dart';

void AddFoodMessage(BuildContext context) {
  final snackBar = SnackBar(
    content: Text(
      'You Added Food Expense!',
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.deepOrange,
    duration: Duration(seconds: 1),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);
}
