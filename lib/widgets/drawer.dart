import 'package:dashboard/screen/home.dart';
import 'package:flutter/material.dart';

Widget buildDrawer(context){
  return Drawer(
    child: SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Image.asset("assets/images/Adstacks.png", height: 60,),
          ),
          const Divider(),
          DrawerHeader(
            child: Column(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                      color: Colors.orange,
                    width: 2
                  )
                ),
                child: const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage("assets/images/R.png"),
                ),
              ),
              const SizedBox(height: 10,),
              const Text("Pooja Mishra", style: TextStyle(
                color: Colors.black, fontSize: 18
              ),),
             Container(
               height: 35,
               width: 90,
               decoration: BoxDecoration(
                   border: Border.all(
                       color: Colors.lightBlue,
                       width: 1
                   ),
                 borderRadius: BorderRadius.circular(12)
               ),
               child: TextButton(onPressed: (){},
                    child: const Text('Admin', style: TextStyle(fontSize: 14),),
                ),
             )
            ],
          ),
          ),
      
          ListTile(leading: const Icon(Icons.home), title: const Text('Home'), onTap: (){
            Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
          },),
          const ListTile(leading: Icon(Icons.people), title: Text('Employees')),
          const ListTile(leading: Icon(Icons.check), title: Text('Attendance')),
          const ListTile(leading: Icon(Icons.calendar_month), title: Text('Summary')),
          const ListTile(leading: Icon(Icons.info), title: Text('Information')),
          const ExpansionTile(title: Text('Workspaces'),
            trailing: Icon(Icons.add),
            children: [
              ListTile(title: Center(child: Text('Adstacks', style: TextStyle(fontSize: 16),)),trailing: Icon(Icons.keyboard_arrow_down),),
              ListTile(title: Center(child: Text('Finance', style: TextStyle(fontSize: 16)),), trailing: Icon(Icons.keyboard_arrow_down),),
            ],
          ),
          const ListTile(leading: Icon(Icons.settings), title: Text("Setting"),),
          const ListTile(leading: Icon(Icons.logout), title: Text("Logout"),)
      
        ],
      ),
    ),
  );
}