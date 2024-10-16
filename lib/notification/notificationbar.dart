import 'package:dashboard/notification/Calender.dart';
import 'package:dashboard/notification/annivarsary.dart';
import 'package:dashboard/notification/birthdaycard.dart';
import 'package:flutter/material.dart';

Widget notificationbar(context){
  double Screenwidth = MediaQuery.of(context).size.width;
  double Screenheight = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.only(top: 50.0),
    child: SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        width: Screenwidth * 0.7,
        color: Colors.deepPurpleAccent.shade700,
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(12.0),
              child: Text("GENERAL 10:00 AM TO 7:00 PM", style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.w600),),
            ),
            Container(
              padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14)
                ),
                child: Calender()),
            BirthdayCard(),
            Anniversary()
          ],
        ),
      ),
    ),
  );
}