import 'package:flutter/material.dart';
import 'package:state_management_app/PROV%C4%B0DERS/add_expences_providers.dart';
import 'package:provider/provider.dart';
import 'package:state_management_app/SCREENS/Shopping_Screen.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<AllProviders>(
          create: (context) => AllProviders(totalexpence: 0),
        ),
      ],
      child: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ShoppingScreen(),
    );
  }
}
