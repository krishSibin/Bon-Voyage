import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';
import 'package:miniproject_traveller/Presentation/home/home.dart';
import 'package:miniproject_traveller/Presentation/search/sub_pages/search_result.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ScreenDateSelection extends StatelessWidget {
  ScreenDateSelection({super.key});
  final _textcontroller = TextEditingController();
  final budgetController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
        color: kblue,
        child: ListView(
          children: [
            SizedBox(
              width: double.infinity,
              height: 400,
              child: LottieBuilder.network(
                  'https://assets7.lottiefiles.com/packages/lf20_ytg7s6tx.json'),
            ),
            const Padding(
              padding: EdgeInsets.only(right: 90),
              child: Text(
                'Enter No of Dates',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: kwhite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 15),
              child: SizedBox(
                  width: 30,
                  height: 40,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: _textcontroller,
                    decoration: InputDecoration(
                        hintText: 'Enter here',
                        suffixText: 'Days',
                        suffixStyle: TextStyle(
                            color: kwhite.withOpacity(.5), fontSize: 15)),
                  )),
            ),
            kheight50,
            const Padding(
              padding: EdgeInsets.only(right: 90),
              child: Text(
                'Enter Your Budget',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 20, color: kwhite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 70, right: 70, top: 15),
              child: SizedBox(
                  width: 30,
                  height: 40,
                  child: TextFormField(
                    keyboardType: TextInputType.number,
                    controller: budgetController,
                    decoration: InputDecoration(
                        hintText: 'Enter here',
                        suffixText: 'Rs',
                        suffixStyle: TextStyle(
                            color: kwhite.withOpacity(.5), fontSize: 15)),
                  )),
            ),
            kheight20,
            Padding(
              padding: const EdgeInsets.only(left: 90, right: 90, top: 15),
              child: Card(
                elevation: 8,
                child: SizedBox(
                  height: 50,
                  child: MaterialButton(
                    color: Colors.blueAccent.withOpacity(.7),
                    onPressed: () async {
                      if (_textcontroller.text.isEmpty) {
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
                                    'https://assets2.lottiefiles.com/packages/lf20_HYlQBb.json'),
                              ),
                              const Text(
                                'Date Not Entered',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                              bottom: 300, left: 50, right: 50),
                          closeIconColor: kwhite,
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        return;
                      }

                      if (budgetController.text.isEmpty) {
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
                                    'https://assets2.lottiefiles.com/packages/lf20_ZRJ8jq.json'),
                              ),
                              const Text(
                                'Budget Not Entered',
                                style: TextStyle(fontSize: 20),
                              ),
                            ],
                          ),
                          margin: const EdgeInsets.only(
                              bottom: 300, left: 50, right: 50),
                          closeIconColor: kwhite,
                        );

                        ScaffoldMessenger.of(context).showSnackBar(snackbar);
                        return;
                      }

                      // Obtain shared preferences.
                      final SharedPreferences prefs =
                          await SharedPreferences.getInstance();
                      final dateValue = int.tryParse(_textcontroller.text);
                      prefs.setInt('noDays', dateValue!);
                      prefs.setBool('locConfirmed', true);

                      final budget = budgetController.text;
                      final intBudget = int.tryParse(budget);
                      if (intBudget == null) {
                        log('enter budget');
                      } else {
                        budgetNotifier.value = intBudget;
                      }
                      prefs.setInt('budgetValue', intBudget!);

                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) {
                          if (_textcontroller.text.isEmpty) {
                            log('No dates Selected');
                          }
                          log(_textcontroller.text);
                          final i = int.tryParse(_textcontroller.text);

                          return ScreenSearchResult(
                            indexNew: i ?? 0,
                          );
                        },
                      ));
                    },
                    child: const Text('Get Location'),
                  ),
                ),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
