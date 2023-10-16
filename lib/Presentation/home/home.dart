import 'package:flutter/material.dart';

// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:miniproject_traveller/Application/Home/home_bloc.dart';

import 'package:miniproject_traveller/Core/colors.dart';
import 'package:miniproject_traveller/Core/constants.dart';

import 'package:miniproject_traveller/Presentation/home/widgets/tab_booking.dart';
import 'package:miniproject_traveller/Presentation/home/widgets/tab_home_screen.dart';
import 'package:miniproject_traveller/Presentation/home/widgets/tab_info.dart';
import 'package:miniproject_traveller/Presentation/home/widgets/tab_restaurants.dart';
import 'package:miniproject_traveller/Presentation/home/widgets/tab_helpLine.dart';
import 'package:lottie/lottie.dart';

ValueNotifier<int> budgetNotifier = ValueNotifier(0);

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});
  final textController = TextEditingController();
  static ValueNotifier<String> currentPlaceNotifier = ValueNotifier('');

  //
  //final currentPlace = placeName;

  @override
  Widget build(BuildContext context) {
    //  final screenSize = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(45),
        child: AppBar(
          title: const Text(
            'Bon Voyage',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // actions: [
          //   AnimSearchBar(
          //     color: Colors.blue,
          //     textFieldColor: Colors.blue,
          //     rtl: true,
          //     width: screenSize,
          //     textController: textController,
          //     onSuffixTap: () {},
          //     onSubmitted: (String value) {
          //       log(value);
          //     },
          //   ),
          // ],
        ),
      ),
      body: Column(
        children: [
          kheight10,
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10),
            child: Container(
              width: double.infinity,
              height: 150,
              decoration: BoxDecoration(
                color: kgreen,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Align(
                alignment: Alignment.center,
                child: LottieBuilder.network(
                    'https://assets9.lottiefiles.com/packages/lf20_WAMQ5G.json'),
              ),
            ),
          ),
          SizedBox(
            height: 50,
            child: TabBar(
              indicatorSize: TabBarIndicatorSize.tab,
              splashBorderRadius: BorderRadius.circular(30),
              padding: const EdgeInsets.all(10),
              indicator: BoxDecoration(
                shape: BoxShape.rectangle,
                borderRadius: BorderRadius.circular(20),
                color: const Color.fromARGB(255, 144, 92, 239),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  stops: const [
                    0.2,
                    0.8,
                  ],
                  colors: [
                    Colors.black.withOpacity(.2),
                    Colors.black.withOpacity(.1)
                  ],
                ),
              ),
              isScrollable: true,
              labelColor: Colors.black,
              labelStyle: const TextStyle(
                  fontWeight: FontWeight.w500, overflow: TextOverflow.visible),
              unselectedLabelColor: Colors.grey,
              tabs: const [
                Tab(
                  text: 'Places',
                ),
                Tab(
                  text: 'Restaurants',
                ),
                Tab(
                  text: 'Bookings',
                ),
                Tab(
                  text: 'HelpLine',
                ),
                Tab(
                  text: 'Info',
                ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(children: [
              ValueListenableBuilder(
                valueListenable: currentPlaceNotifier,
                builder: (context, value, child) {
                  if (value.isEmpty) {
                    return Column(
                      children: [
                        LottieBuilder.network(
                            'https://assets7.lottiefiles.com/packages/lf20_x62chJ.json'),
                        Center(
                          child: Text('Pick Your Place'),
                        ),
                      ],
                    );
                  } else {
                    return HomePlaceWidget(place: value);
                  }
                },
              ),
              ValueListenableBuilder(
                valueListenable: currentPlaceNotifier,
                builder: (context, value, child) {
                  if (value.isEmpty) {
                    return Column(
                      children: [
                        LottieBuilder.network(
                            'https://assets7.lottiefiles.com/packages/lf20_x62chJ.json'),
                        Center(
                          child: Text('Pick Your Place'),
                        ),
                      ],
                    );
                  } else {
                    return RestaurentTabWidget(place: value);
                  }
                },
              ),
              ValueListenableBuilder(
                valueListenable: currentPlaceNotifier,
                builder: (context, value, child) {
                  if (value.isEmpty) {
                    return Column(
                      children: [
                        LottieBuilder.network(
                            'https://assets7.lottiefiles.com/packages/lf20_x62chJ.json'),
                        Center(
                          child: Text('Pick Your Place'),
                        ),
                      ],
                    );
                  } else {
                    return BookingsTabWidget(place: value);
                  }
                },
              ),
              ValueListenableBuilder(
                valueListenable: currentPlaceNotifier,
                builder: (context, value, child) {
                  if (value.isEmpty) {
                    return Column(
                      children: [
                        LottieBuilder.network(
                            'https://assets7.lottiefiles.com/packages/lf20_x62chJ.json'),
                        Center(
                          child: Text('Pick Your Place'),
                        ),
                      ],
                    );
                  } else {
                    return HelpLineTabWidget(place: value);
                  }
                },
              ),
              const UserInfoTabWidget(),
            ]),
          )
        ],
      ),
    );
  }
}
