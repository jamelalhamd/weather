


import 'package:flutter/material.dart';
import 'package:weather/mywidget/mywidget/myTextfield_pass.dart';
import 'package:weather/mywidget/mywidget/myTextfiledemail.dart';
import 'package:weather/mywidget/mywidget/mybottommodelscheet.dart';
import 'package:weather/mywidget/mywidget/mybutton1.dart';
import 'package:weather/mywidget/mywidget/myimage.dart';






class mytabbar extends StatelessWidget {
  mytabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return    DefaultTabController(

      length:5,
      initialIndex: 1,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Tab bars'),
          centerTitle: true,
          bottom: TabBar(tabs: [
            Icon(Icons.cloud_outlined),
            Icon(Icons.print),
            Icon(Icons.settings),
            Icon(Icons.home),
            Icon(Icons.print),

          ]),
        ),

        floatingActionButton: mybotommodelsheet(),

        body: const TabBarView(
          children: [
            Column(
              children: [
                mybutton1(tite: "click",
                    backgroundcolor: Colors.cyan,
                    heigth: 45,
                    wight: 150),
              ],
            ) ,
            myTextfiled_pass(label: 'password'),
            myTextfiled_email(label: "email"),
            myimageasset(heinght: 50,width: 50,url:'assets/images/ja.jpg'),
            myTextfiled_email(label: "email"),

          ],
        ),



      ),
    );
  }
}
