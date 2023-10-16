import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Domain/firebase_services/database_manager/firebase_database.dart';
import 'package:miniproject_traveller/Domain/firebase_services/services/authentication_services.dart';
import 'package:miniproject_traveller/Presentation/login_page/new_login.dart';
//import 'package:rive/rive.dart';

ValueNotifier<bool> resultNotifier = ValueNotifier(false);

class ScreenRegisterPage extends StatelessWidget {
  ScreenRegisterPage({super.key});
  final _key = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _nameController = TextEditingController();
  final _ageController = TextEditingController();
  final _addressController = TextEditingController();
  final _mobileNumberController = TextEditingController();
  final AuthenticationServices _auth = AuthenticationServices();
  final databaseService = FirebaseDatabase();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(220, 10, 247, 207),
      body: SafeArea(
          child: Form(
        key: _key,
        child: ListView(
          children: [
            kheight20,
            SizedBox(
              width: 100,
              height: 130,
              child: LottieBuilder.network(
                  'https://assets9.lottiefiles.com/packages/lf20_gqF9avtcMw.json'),
            ),
            //name
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10, top: 8),
              child: Text(
                'Name',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            TextFieldRegWidget(controllerField: _nameController),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10, top: 8),
              child: Text(
                'Email',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            TextFieldRegWidget(controllerField: _emailController),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10, top: 8),
              child: Text(
                'Password',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            TextFieldRegWidget(controllerField: _passwordController),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10, top: 8),
              child: Text(
                'Age',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            TextFieldRegWidget(controllerField: _ageController),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10, top: 8),
              child: Text(
                'Address',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            TextFieldRegWidget(controllerField: _addressController),
            const Padding(
              padding: EdgeInsets.only(left: 25, bottom: 10, top: 8),
              child: Text(
                'Mobile Number',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
            ),
            TextFieldRegWidget(controllerField: _mobileNumberController),
            kheight20,

            Padding(
              padding: const EdgeInsets.only(left: 120, right: 120),
              child: ElevatedButton(
                  onPressed: () async {
                    if (_key.currentState!.validate()) {
                      createUserData();
                      final snackbar1 = SnackBar(
                        duration: const Duration(seconds: 3),
                        dismissDirection: DismissDirection.horizontal,
                        backgroundColor: Colors.black.withOpacity(.5),
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        behavior: SnackBarBehavior.floating,
                        content: Column(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 150,
                              child: LottieBuilder.network(
                                  'https://assets6.lottiefiles.com/private_files/lf30_nsqfzxxx.json'),
                            ),
                            const Text(
                              'Account Created Successfully',
                              style: TextStyle(fontSize: 20),
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(
                            bottom: 300, left: 50, right: 50),
                        closeIconColor: kwhite,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar1);
                      await Future.delayed(Duration(seconds: 3));
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(
                          builder: (context) {
                            return LoginNewPage();
                          },
                        ),
                      );
                    } else {
                      log('error on screen register');
                      final snackbar = SnackBar(
                        duration: const Duration(seconds: 3),
                        dismissDirection: DismissDirection.horizontal,
                        backgroundColor: Colors.black.withOpacity(.5),
                        elevation: 20,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20)),
                        behavior: SnackBarBehavior.floating,
                        content: Column(
                          children: [
                            SizedBox(
                              width: 100,
                              height: 150,
                              child: LottieBuilder.network(
                                  'https://assets3.lottiefiles.com/packages/lf20_yw3nyrsv.json'),
                            ),
                            const Text(
                              'Invalid Data',
                              style: TextStyle(color: Colors.red, fontSize: 20),
                            ),
                          ],
                        ),
                        margin: const EdgeInsets.only(
                            bottom: 300, left: 50, right: 50),
                        closeIconColor: kwhite,
                      );
                      ScaffoldMessenger.of(context).showSnackBar(snackbar);
                    }
                  },
                  child: const Text('Register')),
            )
          ],
        ),
      )),
    );
  }

  void createUserData() async {
    dynamic resp = await _auth.createUser(
        name: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text,
        age: _ageController.text,
        address: _addressController.text,
        mobile: _mobileNumberController.text);

    log(resp.toString());
  }
}

class TextFieldRegWidget extends StatelessWidget {
  final TextEditingController controllerField;
  const TextFieldRegWidget({
    super.key,
    required this.controllerField,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: TextFormField(
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.only(left: 28, top: 10, bottom: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fillColor: const Color.fromARGB(220, 10, 247, 207),
          filled: true,
        ),
        controller: controllerField,
        validator: (value) {
          if (value == null || value.isEmpty) {
            return 'name not entered';
          } else {
            return null;
          }
        },
      ),
    );
  }
}
