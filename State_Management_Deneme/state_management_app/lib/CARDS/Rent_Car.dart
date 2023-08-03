import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/ALERT%20MESSAGES/rentCard_alert_message.dart';
import 'package:state_management_app/PROV%C4%B0DERS/add_expences_providers.dart';

class RentCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<AllProviders>(context, listen: false).AddRentExpence();
        AddRentMessage(context);
      },
      child: Card(
        color: const Color.fromARGB(255, 181, 115, 192),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.home,
                size: 50,
                color: Colors.black,
              ),
              title: Text('RENT CART'),
              subtitle: Text(
                'Rent Expences(700€)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
