import 'dart:developer';

import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';

class HomeAppBar extends StatelessWidget {
  HomeAppBar({super.key});
  final textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size.width;
    return Container(
      padding: const EdgeInsets.only(left: 20),
      width: double.infinity,
      height: 50,
      color: Colors.blue,
      child: Row(
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          const Text('Traveller App'),
          Container(
            padding: const EdgeInsets.only(left: 120),
            child: AnimSearchBar(
              rtl: true,
              width: screenSize,
              textController: textController,
              onSuffixTap: () {},
              onSubmitted: (String value) {
                log(value);
              },
            ),
          )
        ],
      ),
    );
  }
}
