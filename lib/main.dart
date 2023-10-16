import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:miniproject_traveller/Application/Home/home_bloc.dart';

import 'package:miniproject_traveller/Application/Search/search_bloc.dart';
import 'package:miniproject_traveller/Domain/core/di/dependency_injection.dart';
//import 'package:miniproject_traveller/Presentation/login_page/new_login.dart';

//import 'package:miniproject_traveller/Presentation/splash_screen/screen_splash.dart';

import 'package:miniproject_traveller/Presentation/splash_screen/screen_splash.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
//import 'package:miniproject_traveller/Presentation/main_page/main_home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => get<SearchBloc>()),
        BlocProvider(create: (ctx) => get<HomeBloc>()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData(
              // scaffoldBackgroundColor: Colors.black,
              primarySwatch: Colors.blue,
              useMaterial3: true,
              fontFamily: GoogleFonts.montserrat().fontFamily),
          home: const ScreenSplash()
          //  home: LoginNewPage(),
          // home: MainHomePage(),
          ),
    );
  }
}
