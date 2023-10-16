import 'dart:developer';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Domain/firebase_services/database_manager/firebase_database.dart';
import 'package:miniproject_traveller/Domain/firebase_services/services/authentication_services.dart';

import 'package:miniproject_traveller/Presentation/login_page/new_login.dart';
import 'package:shared_preferences/shared_preferences.dart';

//import 'package:shared_preferences/shared_preferences.dart';
bool check = false;

class Accounts extends StatefulWidget {
  const Accounts({super.key});

  @override
  State<Accounts> createState() => _AccountsState();
}

class _AccountsState extends State<Accounts> {
  AuthenticationServices authService = AuthenticationServices();
  String userKey = '';

  @override
  void initState() {
    userKey = FirebaseDatabase.getCurrentId();

    super.initState();
  }

  final CollectionReference collection =
      FirebaseFirestore.instance.collection('users');
  @override
  Widget build(BuildContext context) {
    // log(userKey.toString());

    return Scaffold(
      body: FutureBuilder(
        future: collection.doc(userKey).get(),
        builder: (context, snapshot) {
          log(snapshot.toString());
          if (snapshot.hasData) {
            log(snapshot.toString());

            final NameField = snapshot.data!['Name'];

            final ageField = snapshot.data!['Age'];
            final emailField = snapshot.data!['Email'];
            final addressField = snapshot.data!['Address'];
            final mobNumField = snapshot.data!['Mobile'];
            return ListView(
              children: [
                kheight20,
                Align(
                  alignment: Alignment.topCenter,
                  child: CircleAvatar(
                      backgroundColor: kblack,
                      radius: 62,
                      child: CircleAvatar(
                        backgroundColor: kwhite,
                        radius: 50,
                        child: LottieBuilder.network(
                          'https://assets3.lottiefiles.com/packages/lf20_ia8jpabk.json',
                          fit: BoxFit.cover,
                        ),
                      )),
                ),
                kheight10,
                Text(
                  NameField.toString().toUpperCase(),
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
                ),
                DetailsTile(
                  title: 'Name',
                  titleValue: NameField,
                ),
                kheight10,
                DetailsTile(
                  title: 'Age',
                  titleValue: ageField,
                ),
                kheight10,
                DetailsTile(
                  title: 'Email',
                  titleValue: emailField,
                ),
                kheight10,
                DetailsTile(
                  title: 'Address',
                  titleValue: addressField,
                ),
                kheight10,
                DetailsTile(
                  title: 'Mobile Number',
                  titleValue: mobNumField,
                ),
                kheight50,
                Padding(
                  padding: EdgeInsets.only(left: 130, right: 130),
                  child: ElevatedButton(
                      onPressed: () async {
                        final sharep = await SharedPreferences.getInstance();
                        sharep.clear();
                        //     await authService.signoutUser();

                        Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                            builder: (context) {
                              return const LoginNewPage();
                            },
                          ),
                          (route) => false,
                        );
                      },
                      child: Text('Log Out')),
                ),
                Text(
                  'App name',
                  textAlign: TextAlign.center,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            );
          }
          if (snapshot.hasError) {
            return const Text('error');
          } else {
            return const Center(
                child: CircularProgressIndicator(
              strokeWidth: 2,
            ));
          }
          // Text('error');
        },
      ),
    );
  }
}

class DetailsTile extends StatelessWidget {
  final String title;
  final String titleValue;
  const DetailsTile({
    required this.title,
    required this.titleValue,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          kheight3,
          Padding(
            padding: const EdgeInsets.only(left: 5),
            child: Text(
              title,
              style: const TextStyle(color: Colors.grey, fontSize: 12),
            ),
          ),
          Card(
            elevation: 2,
            child: Container(
              padding: const EdgeInsets.all(10),
              width: 400,
              height: 50,
              color: Colors.transparent,
              child: Text(
                titleValue,
                style: const TextStyle(fontSize: 17),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
