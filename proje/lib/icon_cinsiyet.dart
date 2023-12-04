import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCinsiyet extends StatelessWidget {
  final String? cinsiyet;
  final IconData? icon;

  IconCinsiyet({this.cinsiyet,this.icon});



  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(icon,size: 50,),
        SizedBox(height: 10,),
        Text(
          cinsiyet!,
          style: TextStyle(color: Colors.black,fontSize: 20),
        ),
      ],
    );
  }
}