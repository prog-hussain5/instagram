// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
          color: Colors.white,
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(FontAwesomeIcons.camera, size: 30),

            Image(image: AssetImage('assets/instagram.png'), width: 110),

            FaIcon(FontAwesomeIcons.locationArrow, size: 30,)

          ],
        )
      ),
    );
  }
}