
// ignore_for_file: depend_on_referenced_packages, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomnavigationBar extends StatelessWidget {
  const CustomnavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),

      child: const Row(
        
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children:[
          FaIcon(FontAwesomeIcons.home, size: 30),
          FaIcon(FontAwesomeIcons.search, size: 30, color: Colors.grey),
          FaIcon(FontAwesomeIcons.solidPlusSquare, size: 30, color: Colors.grey),
          FaIcon(FontAwesomeIcons.solidHeart, size: 30, color: Colors.grey),
          FaIcon(FontAwesomeIcons.solidUser, size: 30, color: Colors.grey),
        ]
      ),
      
    );
  }
}