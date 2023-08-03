import 'package:flutter/material.dart';

void AddRentMessage(BuildContext context) {
  final snackBar = SnackBar(
    content: Text(
      'You Added Rent Expense!',
      style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
    ),
    backgroundColor: const Color.fromARGB(255, 181, 115, 192),
    duration: Duration(seconds: 1),
  );

  ScaffoldMessenger.of(context).showSnackBar(snackBar);

 
}






