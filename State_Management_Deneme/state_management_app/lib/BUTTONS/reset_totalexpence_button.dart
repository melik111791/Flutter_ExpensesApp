import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/PROV%C4%B0DERS/add_expences_providers.dart';

class ResetTotalExpenceButton extends StatelessWidget {
  const ResetTotalExpenceButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 150.0),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 169, 34, 25),
        ),
        onPressed: () {
          Provider.of<AllProviders>(context, listen: false).resetTotalExpence();
          Provider.of<AllProviders>(context, listen: false)
              .deleteAllTapCounters();
          
        },
        child: Text(
          'REMOVE TOTAL EXPENCE',
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
