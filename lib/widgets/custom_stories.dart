// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

class StoriesList extends StatelessWidget {
  const StoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      width: double.infinity,
      height: 130,
      child: ListView(
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        children: [
          
          Storie("Your Story", "assets/perfil-1.jpg"),
          Storie("ninanyc", "assets/perfil-5.jpg"),
          Storie("emilyzheng", "assets/perfil-2.jpg"),
          Storie("chrisrobinp", "assets/perfil-3.jpg"),
          Storie("travis_shr", "assets/perfil-6.jpg"),
          Storie("laurenanntte", "assets/perfil-4.jpg"),
          Storie("ninanyc", "assets/perfil-5.jpg"),
          Storie("emilyzheng", "assets/perfil-2.jpg"),
          Storie("chrisrobinp", "assets/perfil-3.jpg"),
          Storie("travis_shr", "assets/perfil-6.jpg"),
          Storie("laurenanntte", "assets/perfil-4.jpg"),
          
          
          
        ],
      )
    );
  }
}

Widget Storie(String name, String image){

  return Container(
    padding: const EdgeInsets.only(left: 10),
    child: Column(
      children: [

        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50)
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image(
              image: AssetImage(image),
              fit: BoxFit.cover,
              ),
          ),
        ),

        const SizedBox(height: 10,),

        Text(name, style: const TextStyle(fontSize: 18),)
      ]
    ),
  );
}