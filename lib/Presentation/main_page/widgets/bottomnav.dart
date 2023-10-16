import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({super.key});
  static ValueNotifier<int> indexNotifier = ValueNotifier(0);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ValueListenableBuilder(
      valueListenable: indexNotifier,
      builder: (context, value, _) {
        return Padding(
          padding: EdgeInsets.symmetric(
              horizontal: size.width * 0.05, vertical: size.height * 0.01),
          child: Container(
            height: 52,
            decoration: BoxDecoration(
                color: Colors.black.withOpacity(.9),
                borderRadius: BorderRadius.circular(10)),
            child: BottomNavigationBar(
                iconSize: 20,
                backgroundColor: Colors.transparent,
                selectedItemColor: Colors.white,
                unselectedItemColor: Colors.grey,
                currentIndex: value,
                type: BottomNavigationBarType.fixed,
                elevation: 10.0,
                selectedFontSize: 13,
                unselectedFontSize: 10,
                onTap: (newIndex) {
                  indexNotifier.value = newIndex;
                },
                items: const [
                  BottomNavigationBarItem(
                      icon: Icon(Icons.home), label: 'Home'),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.search), label: 'Search'),
                  BottomNavigationBarItem(
                    icon: Icon(Icons.map_outlined),
                    label: 'Directions',
                  ),
                  BottomNavigationBarItem(
                      icon: Icon(Icons.account_circle_sharp), label: 'Profile'),
                ]),
          ),
        );
      },
    );
  }
}
