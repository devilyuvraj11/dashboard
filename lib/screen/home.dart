import 'package:dashboard/notification/notificationbar.dart';
import 'package:dashboard/screen/SearchScreen.dart';
import 'package:dashboard/widgets/Searchbar.dart';
import 'package:dashboard/widgets/drawer.dart';
import 'package:dashboard/widgets/performance.dart';
import 'package:dashboard/widgets/projectCreators.dart';
import 'package:dashboard/widgets/rating.dart';
import 'package:dashboard/widgets/topcreator.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget{
  Home({super.key});
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     key: scaffoldKey,
     drawer: buildDrawer(context),
     endDrawer: notificationbar(context),
     appBar: AppBar(
       title: Row(
         mainAxisAlignment: MainAxisAlignment.spaceBetween,
         children: [
           const Text("Home", style: TextStyle(color: Colors.grey, fontSize: 18),),
           IconButton( onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context) => Searchscreen()));
             },
           icon: Icon(Icons.search))
           //buildSearchBar(context),
         ],
       ),
       actions: [
         IconButton(onPressed: (){
           scaffoldKey.currentState?.openEndDrawer();
         }, icon: const Icon(Icons.dashboard_outlined)),
         Stack(
             children: [
           IconButton(onPressed: (){}, icon: const Icon(Icons.notifications_none,)),
           const Positioned(
             right: 13, top: 7,
             child: CircleAvatar(radius: 4,
               backgroundColor: Colors.orange,),
           )
    ]
     ),
         IconButton(onPressed: (){}, icon: const Icon(Icons.power_settings_new)),
         const CircleAvatar(
             radius: 15,
             child: Icon(Icons.person))
   ]),
     body: SingleChildScrollView(
       child: Column(
         children: [
           topRating(),
           buildProjectsAndCreators(context),
           topCreator(context),
           buildPerformanceGraph(context)
         ],
       ),
     ),
   );
  }

}