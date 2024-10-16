import 'package:dashboard/widgets/CreatorItem.dart';
import 'package:flutter/material.dart';


Widget topCreator(context) {
  double Screenwidth = MediaQuery.of(context).size.width;
  double Screenheight = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      //width: Screenwidth * 0.45,
      height: Screenheight * 0.45,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.blue.shade900
      ),
      padding: const EdgeInsets.all(15),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('Top Creators', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
          SizedBox(height: 15,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Name", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white70)),
              Text("Artworks", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white70)),
              Text("Rating", style: TextStyle(fontWeight: FontWeight.w700, fontSize: 16, color: Colors.white70))
            ],
          ),
          Divider(),
          SizedBox(height: 10),
          CreatorItem(name: '@maddison_c21', rating: 9621, image: AssetImage("assets/images/R.png"), max: 9.0),
          CreatorItem(name: '@karl_wil02', rating: 7032, image: AssetImage("assets/images/R.png"), max: 8.0),
          CreatorItem(name: '@maddison_c21', rating: 9821, image: AssetImage("assets/images/R.png"), max: 9.0),
          CreatorItem(name: '@maddison', rating: 9821, image: AssetImage("assets/images/R.png"), max: 9.0)
        ],),
    ),
  );
  }