import 'package:dashboard/widgets/projectcard.dart';
import 'package:flutter/material.dart';

Widget buildProjectsAndCreators(context) {
 double Screenwidth = MediaQuery.of(context).size.width;
 double Screenheight = MediaQuery.of(context).size.height;
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Container(

      height: Screenheight * 0.45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.blue.shade900
      ),
      padding: EdgeInsets.all(15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('All Projects', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, color: Colors.white)),
                SizedBox(height: 10),
                buildProjectCard('Technology behind the Blockchain', Colors.red),
                buildProjectCard('Another Project', Colors.black54),
                buildProjectCard('Third Project', Colors.black54),
              ],
            ),
          ),
        ],
      ),
    ),
  );
}

