import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/ALERT%20MESSAGES/foodCard_alert_message.dart';
import 'package:state_management_app/PROV%C4%B0DERS/add_expences_providers.dart';

class FoodCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.read<AllProviders>().AddFoodExpence();
        AddFoodMessage(context);
      },
      child: Card(
        color: Colors.deepOrange,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.fastfood_sharp,
                size: 50,
                color: Colors.black,
              ),
              title: Text('FOOD CART'),
              subtitle: Text(
                'Food Expences(15€)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
