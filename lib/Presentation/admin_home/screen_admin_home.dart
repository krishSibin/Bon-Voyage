import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:miniproject_traveller/Presentation/admin_home/view1.dart';

class Dish {
  final String name;
  final double price;

  Dish({required this.name, required this.price});

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
    };
  }
}

class ScreenAdminHome extends StatefulWidget {
  @override
  _ScreenAdminHomeState createState() => _ScreenAdminHomeState();
}

class _ScreenAdminHomeState extends State<ScreenAdminHome> {
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.ref().child('restaurants');

  final TextEditingController _restaurantNameController =
      TextEditingController();
  final TextEditingController _dishNameController = TextEditingController();
  final TextEditingController _dishPriceController = TextEditingController();

  void _addDish(String restaurantName, String dishName, double dishPrice) {
    DatabaseReference restaurantReference =
        _databaseReference.child(restaurantName);
    DatabaseReference dishesReference = restaurantReference.child('dishes');
    DatabaseReference newDishReference = dishesReference.push();

    Dish dish = Dish(name: dishName, price: dishPrice);
    newDishReference.set(dish.toJson());

    _dishNameController.clear();
    _dishPriceController.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: ListView(
          //   crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Restaurant Name:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _restaurantNameController,
              decoration: InputDecoration(
                hintText: 'Enter restaurant name',
              ),
            ),
            SizedBox(height: 20.0),
            Text(
              'Dish Name:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _dishNameController,
              decoration: InputDecoration(
                hintText: 'Enter dish name',
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              'Dish Price:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            TextField(
              controller: _dishPriceController,
              decoration: InputDecoration(
                hintText: 'Enter dish price',
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String restaurantName = _restaurantNameController.text.trim();
                String dishName = _dishNameController.text.trim();
                String dishPriceText = _dishPriceController.text.trim();
                double dishPrice = 0.0; // Default value in case of error

                if (dishPriceText.isNotEmpty) {
                  try {
                    dishPrice = double.parse(dishPriceText);
                  } catch (e) {
                    // Handle the error appropriately, such as displaying an error message
                    print('Error parsing dish price: $e');
                    // You can also provide a default value or show an error message to the user
                  }
                } else {
                  // Handle the case when the input is empty or blank
                  print('Dish price is empty');
                  // You can show an error message or handle it based on your application's logic
                }

                if (restaurantName.isNotEmpty && dishName.isNotEmpty) {
                  _addDish(restaurantName, dishName, dishPrice);
                }
              },
              child: Text('Add Dish'),
            ),
            Padding(
                padding: EdgeInsets.all(20.0),
                child: ElevatedButton(
                    child: Text('Go to Next Page'),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => RestaurantMenuScreen()),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
