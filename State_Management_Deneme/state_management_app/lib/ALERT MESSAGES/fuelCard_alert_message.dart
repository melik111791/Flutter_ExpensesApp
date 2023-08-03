import 'package:flutter/material.dart';

void AddFuelMessage(BuildContext context) {
  final snackBar = SnackBar(
    content: Text(
      'You Added Fuel Expense!',
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    backgroundColor: Colors.yellow,
    duration: Duration(seconds: 1),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);

 
}


