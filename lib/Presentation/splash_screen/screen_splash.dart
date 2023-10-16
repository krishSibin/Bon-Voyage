import 'dart:developer';

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_traveller/Application/Home/home_bloc.dart';
import 'package:miniproject_traveller/Application/Search/search_bloc.dart';
import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Presentation/home/home.dart';

import 'package:miniproject_traveller/Presentation/login_page/new_login.dart';
import 'package:miniproject_traveller/Presentation/main_page/main_home.dart';

import 'package:shared_preferences/shared_preferences.dart';

late String? placeName;
late int? noDays;
late bool? locConfirmed;

class ScreenSplash extends StatefulWidget {
  const ScreenSplash({super.key});

  @override
  State<ScreenSplash> createState() => _ScreenSplashState();
}

class _ScreenSplashState extends State<ScreenSplash> {
  @override
  void initState() {
    // gotoLogin();

    // TODO: implement initState
    super.initState();
    getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhite,
        body: Stack(
          children: [
            Center(
              child: Container(
                  color: kwhite,
                  width: 500,
                  height: double.infinity,
                  child: TextLiquidFill(
                    boxWidth: double.infinity,
                    waveDuration: Duration(seconds: 1),
                    loadDuration: Duration(seconds: 2),
                    text: 'Bon Voyage',
                    waveColor: Colors.black.withOpacity(.5),
                    boxBackgroundColor: kwhite,
                    textStyle: TextStyle(
                        fontSize: 60.0,
                        fontWeight: FontWeight.w700,
                        fontFamily: GoogleFonts.condiment().fontFamily),
                    boxHeight: 800,
                  )),
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                color: kwhite,
                margin: EdgeInsets.only(top: 150, left: 140),
                width: 250.0,
                child: DefaultTextStyle(
                  style: TextStyle(
                    color: kblack.withOpacity(.7),
                    fontSize: 18.0,
                    fontFamily: GoogleFonts.montaga().fontFamily,
                  ),
                  child: AnimatedTextKit(
                    totalRepeatCount: 1,
                    repeatForever: false,
                    pause: Duration(seconds: 1),
                    animatedTexts: [
                      TypewriterAnimatedText('Your Dream Begins Here'),
                    ],
                    onTap: () {
                      print("Tap Event");
                    },
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  // Future<void> gotoLogin() async {}

  Future<void> getData() async {
    final _sharep = await SharedPreferences.getInstance();

    final result = _sharep.getBool('value');
    placeName = _sharep.getString('placeName');
    noDays = _sharep.getInt('noDays');
    locConfirmed = _sharep.getBool('locConfirmed');
    final budget = _sharep.getInt('budgetValue');

    budgetNotifier.value = budget ?? 0;

    if (locConfirmed == true) {
      BlocProvider.of<SearchBloc>(context)
          .add(SearchEvent.getTouristPlaces(placeName: placeName!));

      Home.currentPlaceNotifier.value = placeName ?? ' ';

      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearbyBestPlaces(placeName: placeName!));

      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearbyRestaurents(placeName: placeName!));

      BlocProvider.of<HomeBloc>(context)
          .add(HomeEvent.getNearbyHotels(placeName: placeName!));
    }

    await Future.delayed(const Duration(seconds: 3));

    if (result == null || result == false) {
      log('no user logged in');
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return LoginNewPage();
        },
      ));
    } else {
      Navigator.of(context).pushReplacement(MaterialPageRoute(
        builder: (context) {
          return MainHomePage();
        },
      ));
    }
  }
}
