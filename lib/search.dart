import 'package:flutter/material.dart';
import 'package:weather/constant.dart';
import 'package:weather/modals/weathermodals.dart';
import 'package:weather/modals/weatherscreen.dart';

import 'package:weather/mywidget/mywidget/mytextfiled_normal.dart';
import 'package:weather/service.dart';

class  Search extends StatefulWidget {
  const  Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {

  TextEditingController textEditingController=TextEditingController();
  @override
  Widget build(BuildContext context) {


    return  Scaffold(

      appBar: AppBar(
          elevation: 50,
          backgroundColor: Colors.blue,
          centerTitle: true,

          title: Text(" Weather",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),
      body: Center(child: myTextfiled(label: 'Search',
      suffixIcon: Icons.search,
         onChange: (value){


           City_name=value;





         },

        onPressedicon: () async {

          WeatherModal weatherModal= await getweather(City_name);
          weathemodel1=weatherModal;
          print(weathemodel1);

        Navigator.push(context, MaterialPageRoute(
            builder: (context) => weatherscreen()


    ));

        },




      )),
    );
  }
}
