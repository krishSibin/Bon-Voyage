import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Domain/firebase_services/database_manager/firebase_database.dart';
import 'package:miniproject_traveller/Domain/firebase_services/services/authentication_services.dart';
import 'package:miniproject_traveller/Presentation/login_page/login.dart';
import 'package:miniproject_traveller/Presentation/main_page/main_home.dart';
import 'package:miniproject_traveller/Presentation/register_page/screen_register_page.dart';
import 'package:miniproject_traveller/Presentation/widgets/title_widget.dart';
//import 'package:miniproject_traveller/Core/constants.dart';
//import 'package:miniproject_traveller/Presentation/widgets/text_field_widget.dart';
import 'package:rive/rive.dart';

class LoginNewPage extends StatefulWidget {
  const LoginNewPage({super.key});

  @override
  State<LoginNewPage> createState() => _LoginNewPageState();
}

class _LoginNewPageState extends State<LoginNewPage> {
  FocusNode emailFocusNode = FocusNode();
  final emailController = TextEditingController();
  FocusNode passwordFocusNode = FocusNode();
  final passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  final AuthenticationServices _auth = AuthenticationServices();
  final FirebaseDatabase service = FirebaseDatabase();

  //rive controller and input
  StateMachineController? controller;
  SMIInput<bool>? isChecking;
  SMIInput<double>? numLook;
  SMIInput<bool>? isHandsUp;
  SMIInput<bool>? trigSuccess;
  SMIInput<bool>? trigFail;
  @override
  void initState() {
    emailFocusNode.addListener(emailFocus);
    passwordFocusNode.addListener(passwordFocus);
    super.initState();
  }

  @override
  void dispose() {
    emailFocusNode.removeListener(emailFocus);
    passwordFocusNode.removeListener(passwordFocus);
    super.dispose();
  }

  void emailFocus() {
    isChecking?.change(emailFocusNode.hasFocus);
  }

  void passwordFocus() {
    isHandsUp?.change(passwordFocusNode.hasFocus);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFD6E2EA),
      body: Form(
        key: _key,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 5, bottom: 20),
              child: SizedBox(
                width: 380,
                height: 300,
                child: RiveAnimation.asset(
                  'assets/animations/login.riv',
                  stateMachines: const ['Login Machine'],
                  onInit: (artboard) {
                    controller = StateMachineController.fromArtboard(
                        artboard, "Login Machine");
                    if (controller == null) return;
                    artboard.addController(controller!);
                    isChecking = controller!.findInput("isChecking");
                    numLook = controller!.findInput("numLook");
                    isHandsUp = controller!.findInput("isHandsUp");
                    trigSuccess = controller!.findInput("trigSuccess");
                    trigFail = controller!.findInput("trigFail");
                  },
                ),
              ),
            ),

            TitleWidget(title: 'Email'),

            //email
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                focusNode: emailFocusNode,
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  contentPadding:
                      const EdgeInsets.only(left: 28, top: 20, bottom: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fillColor: const Color.fromARGB(220, 10, 247, 207),
                  filled: true,
                ),
                controller: emailController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'email not entered';
                  } else {
                    return null;
                  }
                },
                onChanged: (value) {
                  numLook?.change(value.length.toDouble());
                },
              ),
            ),
            kheight30,
            //password
            TitleWidget(title: 'Password'),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: TextFormField(
                focusNode: passwordFocusNode,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: 'Enter Password',
                  contentPadding:
                      const EdgeInsets.only(left: 28, top: 20, bottom: 20),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  fillColor: const Color.fromARGB(220, 10, 247, 207),
                  filled: true,
                ),
                controller: passwordController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'email not entered';
                  } else {
                    return null;
                  }
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Not registered ? '),
                  GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) {
                            return ScreenRegisterPage();
                          },
                        ),
                      );
                    },
                    child: const Text(
                      'register',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            kheight10,

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text('StakeHolder'),
                kwidth,
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) {
                        return ScreenLogin();
                      },
                    ));
                  },
                  child: const Text(
                    'Login',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),

            kheight20,
            Padding(
              padding: const EdgeInsets.only(left: 100, right: 100),
              child: ElevatedButton(
                  onPressed: () async {
                    emailFocusNode.unfocus();
                    passwordFocusNode.unfocus();
                    if (_key.currentState!.validate()) {
                      dynamic resp = await _auth.loginUser(
                          emailController.text, passwordController.text);

                      if (resp == null) {
                        trigFail!.change(true);
                      } else {
                        trigSuccess!.change(true);
                        await Future.delayed(Duration(milliseconds: 800));
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) {
                              return MainHomePage();
                            },
                          ),
                        );
                      }
                    } else {
                      trigFail!.change(true);
                      log('unvalid');
                    }
                  },
                  child: const Text('Login')),
            ),
          ],
        ),
      ),
    );
  }
}
