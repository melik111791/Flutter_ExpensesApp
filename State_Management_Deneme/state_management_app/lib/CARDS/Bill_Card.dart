import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/ALERT%20MESSAGES/billCard_alert_message.dart';
import 'package:state_management_app/PROV%C4%B0DERS/add_expences_providers.dart';



class BillCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Provider.of<AllProviders>(context, listen: false).AddBillExpence();
        AddBillMessage(context);
        
      },
      child: Card(
        color: Colors.lightGreen,
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            const ListTile(
              leading: Icon(
                Icons.water_drop_rounded,
                size: 50,
                color: Colors.black,
              ),
              title: Text('BILL CART'),
              subtitle: Text(
                'Bill Expences(25€)',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
