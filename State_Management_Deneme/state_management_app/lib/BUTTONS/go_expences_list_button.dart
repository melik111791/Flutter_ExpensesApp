import 'package:flutter/material.dart';
import 'package:state_management_app/SCREENS/Expences_Page.dart';

class GoExpenceListPageButton extends StatelessWidget {
  GoExpenceListPageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 150.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 169, 34, 25),
          minimumSize: Size(208, 38),
        ),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ExpencesPage(),
            ),
          );
        },
        child: Text(
          'See All Expenses',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
