import 'package:flutter/material.dart';
import 'package:state_management_app/BUTTONS/go_expences_list_button.dart';
import 'package:state_management_app/BUTTONS/reset_totalexpence_button.dart';

import 'package:state_management_app/TOTAL%20EXPENCE/Total_expence.dart';
import '../CARDS/Bill_Card.dart';
import '../CARDS/Food_Card.dart';
import '../CARDS/Fuel_Card.dart';
import '../CARDS/Rent_Car.dart';


class ShoppingScreen extends StatelessWidget {
 
   ShoppingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 189, 25, 25),
          title: Text('EXPENCES APP'),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: Icon(
                Icons.shopping_basket,
                size: 40,
                color: const Color.fromARGB(255, 41, 242, 47),
              ),
            )
          ],
        ),
        body: Padding(
          padding: EdgeInsets.fromLTRB(10, 20, 15, 0),
          child: Column(
            children: [
              FoodCard(),
              SizedBox(
                height: 20,
              ),
              BillCard(),
              SizedBox(
                height: 20,
              ),
              FuelCard(),
              SizedBox(
                height: 20,
              ),
              RentCard(),
              SizedBox(
                height: 60,
              ),
              TotalExpence(),
              SizedBox(height: 40,),
              ResetTotalExpenceButton(),
              SizedBox(height: 5,),
              GoExpenceListPageButton(),
            ],
          ),
        ),
       
      ),
    );
  }
}
