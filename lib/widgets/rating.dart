import 'package:flutter/material.dart';

Widget topRating(){
  return Padding(
    padding: const EdgeInsets.all(20.0),
    child: Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.purple[300],
            borderRadius: BorderRadius.circular(15)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text("ETHEREUM 2.0", style: TextStyle(fontSize: 12, color: Colors.white),),
          const SizedBox(height: 10,),
          const Text("Top Rating \n Project", style: TextStyle(fontSize: 25, color: Colors.white, fontWeight: FontWeight.bold),),
          const SizedBox(height: 15),
          const Text("Trending project and high rating\n Project Created by team", style: TextStyle(fontSize: 12, color: Colors.white),),
          const SizedBox(height: 15),
          ElevatedButton(onPressed: (){}, child: const Text(" Learn More. ", style: TextStyle(color: Colors.white),),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.black45
            ),
          )
        ],
      ),
    ),
  );
}