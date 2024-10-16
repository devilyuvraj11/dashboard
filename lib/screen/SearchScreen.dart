import 'package:dashboard/widgets/Searchbar.dart';
import 'package:flutter/material.dart';

class Searchscreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Scaffold(body: Padding(
     padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
     child: buildSearchBar(context),
   ));
  }

}