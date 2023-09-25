import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:x/pages/widgets/twitter_buttons.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(),
        ),
        centerTitle: true,
        title: SizedBox(
          height: 32,
          width: 32,
          child: SvgPicture.asset(
            'assets/logo/twitter-seeklogo.com.svg',
            fit: BoxFit.contain,
          ),
        ),
      ),
      body: const Column(
        children: [
          Divider(
            thickness: 0.5,
            color: Colors.grey,
            height: 10.0,
          ),
          SizedBox(
            height: 8,
          ),
          TwitterButtons(),
          Divider(
            thickness: 0.5,
            color: Colors.grey,
            height: 10.0,
          ),
        ],
      ),
    );
  }
}
