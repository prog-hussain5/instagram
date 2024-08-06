// ignore_for_file: non_constant_identifier_names, depend_on_referenced_packages, sized_box_for_whitespace

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram/widgets/custom_appbar.dart';
import 'package:instagram/widgets/custom_navbar.dart';
import 'package:instagram/widgets/custom_publication.dart';
import 'package:instagram/widgets/custom_stories.dart';

class InstagramPage extends StatelessWidget {
  const InstagramPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const CustomAppBar(),
          Container(
            width: double.infinity,
            height: 3,
          ),
          Expanded(
              child: SingleChildScrollView(
            physics: const BouncingScrollPhysics(),
            child: Column(children: [
              _StoriesWathAll(),
              const StoriesList(),
              Container(
                width: double.infinity,
                height: 2,
              ),
              const CustomPublication(
                nombre: 'emilyzheng',
                foto_perfil: 'assets/perfil-2.jpg',
                foto: 'assets/publicacion-1.jpg',
                likes: '15',
                descripcion: 'Donec condimentum pharetra eros',
                comments: '10',
              ),
              Container(
                width: double.infinity,
                height: 3,
              ),
              const CustomPublication(
                nombre: 'chrisrobinp',
                foto_perfil: 'assets/perfil-3.jpg',
                foto: 'assets/publicacion-2.jpg',
                likes: '3',
                descripcion: 'Donec condimentum pharetra eros',
                comments: '2',
              ),
              Container(
                width: double.infinity,
                height: 3,
              ),
              const CustomPublication(
                nombre: 'travis_shr',
                foto_perfil: 'assets/perfil-6.jpg',
                foto: 'assets/publicacion-5.jpg',
                likes: '3',
                descripcion: 'Donec condimentum pharetra eros',
                comments: '2',
              ),
              Container(
                width: double.infinity,
                height: 3,
              ),
              const CustomPublication(
                nombre: 'laurenanntte',
                foto_perfil: 'assets/perfil-4.jpg',
                foto: 'assets/publicacion-3.jpg',
                likes: '36',
                descripcion: 'Donec condimentum pharetra eros',
                comments: '5',
              ),
              Container(
                width: double.infinity,
                height: 3,
              ),
              const CustomPublication(
                nombre: 'ninanyc',
                foto_perfil: 'assets/perfil-5.jpg',
                foto: 'assets/publicacion-6.jpg',
                likes: '88',
                descripcion: 'Donec condimentum pharetra eros',
                comments: '11',
              ),
              Container(
                width: double.infinity,
                height: 3,
              ),
              const CustomPublication(
                nombre: 'abbas',
                foto_perfil: 'assets/perfil-5.jpg',
                foto: 'assets/perfil-6.jpg',
                likes: '108',
                descripcion: 'Donec condimentum pharetra eros',
                comments: '44',
              ),
            ]),
          )),
          const CustomnavigationBar()
        ],
      ),
    );
  }

  Widget _StoriesWathAll() {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      child: const Row(children:[
        Text('Stories',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
        Spacer(),
        FaIcon(FontAwesomeIcons.play, size: 15),
        SizedBox(
          width: 5,
        ),
        Text('Watch All',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
      ]),
    );
  }
}