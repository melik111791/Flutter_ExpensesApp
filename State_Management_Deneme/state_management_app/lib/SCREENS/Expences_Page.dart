import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/PROVİDERS/add_expences_providers.dart';

class ExpencesPage extends StatelessWidget {
  const ExpencesPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expences Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Food Counter: ${context.watch<AllProviders>().FoodCounter} ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10,),
            Text(
              'Fuel Counter: ${context.watch<AllProviders>().FuelCounter} ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10,),
            Text(
              'Rent Counter: ${context.watch<AllProviders>().RentCounter} ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10,),
            Text(
              'Bill Counter: ${context.watch<AllProviders>().BillCounter} ',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10,),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Geri Dön'),
            ),
          ],
        ),
      ),
    );
  }
}
