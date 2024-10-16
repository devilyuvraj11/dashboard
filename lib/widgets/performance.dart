import 'package:flutter/material.dart';

Widget buildPerformanceGraph(context){
  double Screenwidth = MediaQuery.of(context).size.width;
  double Screenheight = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.all(15.0),
    child: Container(
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(color: Colors.grey.withOpacity(0.2), blurRadius: 5)
        ]
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Over All Performance\n The Years", style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),),

              Row(
                  children: [
                    CircleAvatar(
              radius: 5,
              backgroundColor: Colors.orange,
              ),
              Text("Pending\nData", style: TextStyle(color: Colors.orange),),]),
              Row(
                  children:[CircleAvatar(
                radius: 5,
                backgroundColor: Colors.deepPurpleAccent,
              ),
              Text("Project\nData", style: TextStyle(color: Colors.deepPurpleAccent),),])
            ],
          ),
          //graph()
        ],
      ),
    ),
  );
}