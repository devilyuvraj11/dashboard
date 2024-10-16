import 'package:flutter/material.dart';

Widget buildProjectCard(String title, Color color) {
  return Card(
    color: color,
    margin: const EdgeInsets.all(10),
    child: ListTile(
      title: Text(title, style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w600),),
      subtitle: const Row(
        children: [
          Text('Project #1 •', style: TextStyle(color: Colors.white60, fontSize: 15, fontWeight: FontWeight.w600),),
          InkWell(
            child: Text(" See project details", style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.white, decoration: TextDecoration.underline, decorationColor: Colors.white),),
          )
        ],
      ),
      trailing: const Icon(Icons.edit, color: Colors.white,),
    ),
  );
}