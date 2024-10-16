import 'package:dashboard/notification/birthdayimage.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget BirthdayCard(){
  return Card(
    color: Colors.grey.shade700,
    child: Column(
      children: [
        const Text("Today Birthday", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800, color: Colors.white),),
        const SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.deepPurpleAccent,
                  border: Border.all(width: 2)
                ),
                child: birthdayImage("assets/images/R.png")
              ),
              const SizedBox(width: 10,),
              birthdayImage("assets/images/boy.jpg")
            ],
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text("Total", style: TextStyle(color: Colors.deepPurpleAccent.shade100, fontSize: 12, fontWeight: FontWeight.w300),),
            ),
            const SizedBox(width: 10,),
            const Text("2", style: TextStyle(color: Colors.white70, fontSize: 13, fontWeight: FontWeight.w600),),
            const SizedBox(width: 10,),
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.deepPurpleAccent
              ),
              child: const Row(
                children: [
                  FaIcon(FontAwesomeIcons.telegram, color: Colors.white,),
                  SizedBox(width: 10,),
                  Text("Birthday Wishing", style: TextStyle(color: Colors.white, fontSize: 15),)
                ],
              )
          ),
        )
      ],
    ),
  );
}