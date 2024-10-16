import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget birthdayImage(image){
  return Stack(
    children:[ 
      CircleAvatar(
      radius: 22,
      backgroundColor: Colors.grey.shade600,
      backgroundImage: AssetImage(image),
    ),
      const Positioned(
          right: 1,
          child: FaIcon(FontAwesomeIcons.cakeCandles, size: 15, color: Colors.orange,))
    ]
  );
}