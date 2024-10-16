import 'package:flutter/material.dart';

Widget buildSearchBar(context){
  double Screenwidth = MediaQuery.of(context).size.width;
  return SizedBox(

    child: TextField(
      decoration: InputDecoration(
        hintText: "Search",
          hintStyle: const TextStyle(color: Colors.white38),
          suffixIcon: const Icon(Icons.search, color: Colors.white38,),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
        filled: true,
        fillColor: Colors.black87
      ),
    ),
  );
}