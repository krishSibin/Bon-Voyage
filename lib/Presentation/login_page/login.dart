import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Domain/firebase_services/services/authentication_services.dart';
import 'package:miniproject_traveller/Presentation/admin_home/screen_admin_home.dart';

import 'package:miniproject_traveller/Presentation/widgets/text_field_widget.dart';
import 'package:miniproject_traveller/Presentation/widgets/title_widget.dart';

import '../../Domain/firebase_services/database_manager/firebase_database.dart';

class ScreenLogin extends StatefulWidget {
  const ScreenLogin({super.key});

  @override
  State<ScreenLogin> createState() => _ScreenLoginState();
}

class _ScreenLoginState extends State<ScreenLogin> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _key = GlobalKey<FormState>();
  final AuthenticationServices _auth = AuthenticationServices();
  final FirebaseDatabase service = FirebaseDatabase();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 10, 247, 207),
      body: SafeArea(
        child: Form(
          key: _key,
          child: ListView(
            children: [
              SizedBox(
                width: 300,
                height: 300,
                //color: Colors.white,
                child: LottieBuilder.network(
                    //'https://assets2.lottiefiles.com/packages/lf20_ia8jpabk.json'),
                    'https://assets3.lottiefiles.com/packages/lf20_xvtpTRUupe.json'),
              ),
              const TitleWidget(
                title: 'Email',
              ),
              kheight3,
              TextFormFieldWIdget(
                controllerField: _emailController,
                hintText: 'Email',
              ),
              kheight30,
              const TitleWidget(title: 'Password'),
              TextFormFieldWIdget(
                controllerField: _passwordController,
                hintText: 'Password',
                charHide: true,
              ),
              kheight50,
              Padding(
                padding: EdgeInsets.only(left: 100, right: 100),
                child: ElevatedButton(
                    onPressed: () async {
                      if (_key.currentState!.validate()) {
                        dynamic resp = await _auth.loginUser(
                            _emailController.text, _passwordController.text);

                        if (resp == null) {
                          log('invalid user');
                        } else {
                          log('successfull');
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) {
                                return ScreenAdminHome();
                              },
                            ),
                          );
                        }
                      }
                    },
                    child: const Text('Login')),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
