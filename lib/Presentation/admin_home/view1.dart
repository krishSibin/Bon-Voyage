import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/cupertino.dart';

class Dish {
  final String name;
  final double price;

  Dish({required this.name, required this.price});

  factory Dish.fromJson(Map<dynamic, dynamic> json) {
    return Dish(
      name: json['name'],
      price: double.parse(json['price'].toString()),
    );
  }
}

class RestaurantMenuScreen extends StatefulWidget {
  const RestaurantMenuScreen({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _RestaurantMenuScreenState createState() => _RestaurantMenuScreenState();
}

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen> {
  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.ref().child('restaurants');

  final TextEditingController _restaurantNameController =
      TextEditingController();

  List<Dish> _menu = [];

  void _fetchMenu(String restaurantName) {
    DatabaseReference restaurantReference =
        _databaseReference.child(restaurantName);
    DatabaseReference dishesReference = restaurantReference.child('dishes');

    dishesReference.onValue.listen((event) {
      DataSnapshot snapshot = event.snapshot;
      setState(() {
        _menu.clear();
        Map<dynamic, dynamic>? dishes =
            snapshot.value as Map<dynamic, dynamic>?;

        if (dishes != null) {
          dishes.forEach((key, value) {
            Dish dish = Dish.fromJson(value as Map<dynamic, dynamic>);
            _menu.add(dish);
          });
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Restaurant Menu'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            ElevatedButton(
              onPressed: () {
                String restaurantName = _restaurantNameController.text.trim();
                if (restaurantName.isNotEmpty) {
                  _fetchMenu(restaurantName);
                }
              },
              child: Text('Fetch Menu'),
            ),
            SizedBox(height: 20.0),
            Text(
              'Menu:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _menu.length,
                itemBuilder: (BuildContext context, int index) {
                  Dish dish = _menu[index];
                  return ListTile(
                    title: Text(dish.name),
                    subtitle: Text('Price: \$${dish.price.toStringAsFixed(2)}'),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
