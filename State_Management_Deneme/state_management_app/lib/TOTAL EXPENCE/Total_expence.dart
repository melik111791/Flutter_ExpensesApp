import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/PROV%C4%B0DERS/add_expences_providers.dart';

class TotalExpence extends StatelessWidget {
  const TotalExpence({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<AllProviders>(
      builder: (context, allProviders, child) {
        int totalexpence = allProviders.totalexpence;
        return Text(
           'TOTAL EXPENCE: $totalexpence\u20AC ',
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        );
      },
    );
  }
}
