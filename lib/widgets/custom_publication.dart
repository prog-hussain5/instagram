// ignore_for_file: depend_on_referenced_packages, sized_box_for_whitespace, unnecessary_string_interpolations, unnecessary_brace_in_string_interps, non_constant_identifier_names, avoid_unnecessary_containers, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomPublication extends StatelessWidget {
  final String nombre;
  final String foto_perfil;
  final String foto;
  final String likes;
  final String descripcion;
  final String comments;

  const CustomPublication({super.key, 
    required this.nombre,
    required this.foto_perfil,
    required this.foto,
    required this.likes,
    required this.descripcion,
    required this.comments,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 540,
      child: Column(
        children: [
          _nombreUsuario(nombre, foto_perfil),
          Container(
            width: double.infinity,
            height: 340,
            child: Image(
              image: AssetImage(foto),
              fit: BoxFit.cover,
            ),
          ),
          PieIcons(),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                Text('${likes} likes', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 15),
            child: Row(
              children: <Widget>[
                Text('${nombre}', style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600)),
                const SizedBox(width: 5),
                Text('${descripcion}', style: const TextStyle(fontSize: 18)),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
            child: Row(
              children: <Widget>[
                Text('View all ${comments} comments', style: const TextStyle(fontSize: 18, color: Colors.grey)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Widget _nombreUsuario(String nombre, String foto_perfil) {
  return Container(
    padding: const EdgeInsets.only(top: 10, right: 15, left: 15, bottom: 10),
    width: double.infinity,
    height: 60,
    color: Colors.white,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          child: Column(
            children: <Widget>[
              Container(
                width: 40,
                height: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(40),
                  child: Image(
                    image: AssetImage(foto_perfil),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        const SizedBox(width: 10),
        Text(nombre, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        const Spacer(),
        const FaIcon(FontAwesomeIcons.ellipsisV, color: Colors.grey),
      ],
    ),
  );
}

Widget PieIcons() {
  return Container(
    padding: const EdgeInsets.symmetric(horizontal: 15),
    width: double.infinity,
    height: 50,
    color: Colors.white,
    child: Row(
      children: <Widget>[
        const FaIcon(FontAwesomeIcons.heart, size: 25),
        const SizedBox(width: 15),
        const FaIcon(FontAwesomeIcons.comment, size: 25),
        const SizedBox(width: 15),
        SvgPicture.asset('assets/send.svg', width: 25),
        const Spacer(),
        const FaIcon(FontAwesomeIcons.bookmark, size: 25),
      ],
    ),
  );
}
