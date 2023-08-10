import 'package:flutter/material.dart';
import 'package:weather/constant.dart';
import 'package:weather/modals/weathermodals.dart';
import 'package:weather/mywidget/mywidget/myimage.dart';
import 'package:weather/search.dart';
import 'package:weather/service.dart';

class weatherscreen extends StatefulWidget {
  const weatherscreen({super.key});

  @override
  State<weatherscreen> createState() => _weatherscreenState();
}

class _weatherscreenState extends State<weatherscreen> {

  WeatherModal? wth=weathemodel1;



  @override
  Widget build(BuildContext context) {

    return  Scaffold(
backgroundColor: Colors.orangeAccent.shade100,
         appBar: AppBar(
           elevation: 50,
           backgroundColor: Colors.orange.shade500,
             centerTitle: true,
             actions:  [IconButton(onPressed: (){
               Navigator.push(context, MaterialPageRoute(builder: (context) =>Search( ),));
             }, icon:Icon (Icons.search,size: 30),)],
             title: Text(" Weather",style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),)),

      body:  Column(
 crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            SizedBox(height: 150,),

            Text(City_name,style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold,),),
            Text(wth!.date,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal,),),
            SizedBox(
              height: 50,
            ),
            Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                  Icon(Icons.sunny,size: 70,),
                  SizedBox(width: 50,),
                  Text('${wth!.tem}',style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold,),),
                  SizedBox(width: 50,),
                  Column(

                    children: [
                      Text("Max Tem : ${wth?.MAXtem}",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal,),),
                      Text("Min Tem : ${wth?.MINtem}",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal,),),

                    ],
                  ),



                ],

            ),
            SizedBox(height: 50,),
            Text(wth!.state,style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold,),),
      ]),

    );
  }
}
