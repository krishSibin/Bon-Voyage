import 'dart:developer';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:miniproject_traveller/Presentation/home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

late String? namerest;

class RestaurentDetails extends StatelessWidget {
  const RestaurentDetails({super.key, required this.restName});
  final String restName;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: RestaurantMenuScreen()),
      ],
    );
  }
}

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

late String? restName;

class RestaurantMenuScreen extends StatefulWidget {
  const RestaurantMenuScreen({
    super.key,
  });

  @override
  // ignore: library_private_types_in_public_api
  _RestaurantMenuScreenState createState() => _RestaurantMenuScreenState();
}

class _RestaurantMenuScreenState extends State<RestaurantMenuScreen> {
  final String? restaurentName = restName;

  final DatabaseReference _databaseReference =
      FirebaseDatabase.instance.ref().child('restaurants');

  // final TextEditingController _restaurantNameController =
  //     TextEditingController();

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
        title: const Text('Restaurant Menu'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // const Text(
            //   'Restaurant Name:',
            //   style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            // ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                String restaurantName = restaurentName ?? '';
                if (restaurantName.isNotEmpty) {
                  _fetchMenu(restaurantName);
                }
              },
              child: const Text('Fetch Menu'),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Menu:',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: _menu.length,
                itemBuilder: (BuildContext context, int index) {
                  Dish dish = _menu[index];
                  return GestureDetector(
                    onTap: () async {
                      final shareP = await SharedPreferences.getInstance();
                      log(dish.name.toString());
                      final intBudget = dish.price.toInt();
                      log(intBudget.toString());

                      //   final dishPrice = dish.price;
                      budgetNotifier.value = budgetNotifier.value - intBudget;
                      shareP.setInt('budgetValue', budgetNotifier.value);
                    },
                    child: ListTile(
                      title: Text(dish.name),
                      subtitle:
                          Text('Price: \$${dish.price.toStringAsFixed(2)}'),
                    ),
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
