import 'package:flutter/material.dart';
import 'package:x/pages/widgets/twitter_button.dart';

class TwitterButtons extends StatefulWidget {
  const TwitterButtons({super.key});

  @override
  State<TwitterButtons> createState() => _TwitterButtonsState();
}

class _TwitterButtonsState extends State<TwitterButtons> {
  bool isForYou = true;

  bool isFollow = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: [
        TwitterButton(
          label: 'Para Você',
          onTap: () {
            if (isForYou == true) {
              return;
            } else {
              setState(() {
                isForYou = true;
                isFollow = false;
              });
            }
          },
          selected: isForYou,
        ),
        TwitterButton(
          label: 'Seguindo',
          onTap: () {
            if (isFollow == true) {
              return;
            } else {
              setState(() {
                isForYou = false;
                isFollow = true;
              });
            }
          },
          selected: isFollow,
        ),
      ],
    );
  }
}
