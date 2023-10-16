import 'package:flutter/material.dart';
import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Presentation/home/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserInfoTabWidget extends StatelessWidget {
  const UserInfoTabWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        kheight60,
        Text(
          'Your Budget Available',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
        ValueListenableBuilder(
          valueListenable: budgetNotifier,
          builder: (context, value, child) {
            return Text(
              ' Rs ${value.toString()}',
              style: TextStyle(fontSize: 30),
            );
          },
        ),
        kheight60,
        Text(
          'Journey Completed ?',
          style: TextStyle(fontSize: 25),
        ),
        GestureDetector(
            onTap: () async {
              final sharep = await SharedPreferences.getInstance();
              await sharep.remove('placeName');
              await sharep.remove('noDays');
              await sharep.remove('locConfirmed');
              budgetNotifier.value = 0;
              sharep.setInt('budgetValue', budgetNotifier.value);
            },
            child: Text(
              'Plan next Journey',
              style: TextStyle(fontSize: 20),
            )),
      ],
    );
  }
}
