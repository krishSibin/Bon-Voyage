import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:miniproject_traveller/Presentation/accounts/account.dart';
import 'package:miniproject_traveller/Presentation/coming_soon/coming_soon.dart';
import 'package:miniproject_traveller/Presentation/home/home.dart';
import 'package:miniproject_traveller/Presentation/main_page/widgets/bottomnav.dart';
import 'package:miniproject_traveller/Presentation/search/search.dart';

class MainHomePage extends StatelessWidget {
  MainHomePage({super.key});

  final pages = [
    Home(),
    Search(),
    const ComingSoon(),
    const Accounts(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        body: SafeArea(
          child: ValueListenableBuilder(
            valueListenable: BottomNavigationBarWidget.indexNotifier,
            builder: (context, value, _) {
              return PageTransitionSwitcher(
                duration: const Duration(milliseconds: 650),
                transitionBuilder:
                    (child, primaryAnimation, secondaryAnimation) {
                  return FadeThroughTransition(
                    animation: primaryAnimation,
                    secondaryAnimation: secondaryAnimation,
                    child: child,
                  );
                },
                child: pages[value],
              );
            },
          ),
        ),
        bottomNavigationBar: const BottomNavigationBarWidget(),
      ),
    );
  }
}
