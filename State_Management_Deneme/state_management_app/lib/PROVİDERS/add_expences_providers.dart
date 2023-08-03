import 'package:flutter/material.dart';

class AllProviders extends ChangeNotifier {
  int foodexpence;
  int fuelexpence;
  int rentexpence;
  int billexpence;
  int totalexpence;

  int foodTapCounter = 0;
  int fuelTapCounter = 0;
  int rentTapCounter = 0;
  int billTapCounter = 0;

  int get FoodCounter => foodTapCounter;
  int get FuelCounter => fuelTapCounter;
  int get RentCounter => rentTapCounter;
  int get BillCounter => billTapCounter;

  AllProviders({
    this.foodexpence = 15,
    this.billexpence = 25,
    this.fuelexpence = 20,
    this.rentexpence = 700,
    required this.totalexpence,
  });

  void AddFoodExpence() {
    totalexpence += foodexpence;
    foodTapCounter++;
    notifyListeners();
  }

  void AddBillExpence() {
    totalexpence += billexpence;
    billTapCounter++;
    notifyListeners();
  }

  void AddFuelExpence() {
    totalexpence += fuelexpence;
    fuelTapCounter++;
    notifyListeners();
  }

  void AddRentExpence() {
    totalexpence += rentexpence;
    rentTapCounter++;
    notifyListeners();
  }

  void resetTotalExpence() {
    totalexpence = 0;
    notifyListeners();
  }

  void deleteAllTapCounters() {
    foodTapCounter = 0;
    billTapCounter = 0;
    fuelTapCounter = 0;
    rentTapCounter = 0;
    notifyListeners();
  }
}
