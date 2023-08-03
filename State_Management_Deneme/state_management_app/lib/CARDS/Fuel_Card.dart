import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/ALERT%20MESSAGES/fuelCard_alert_message.dart';
import 'package:state_management_app/PROV%C4%B0DERS/add_expences_providers.dart';

class FuelCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<AllProviders>(context, listen: false).AddFuelExpence();
        AddFuelMessage(context);
      },
      child: Card(
        color: Colors.yellow,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.gas_meter,
                size: 50,
                color: Colors.black,
              ),
              title: Text('FUEL CART'),
              subtitle: Text(
                'Fuel Expences(20€)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
