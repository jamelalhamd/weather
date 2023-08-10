import 'package:flutter/material.dart';
import 'package:weather/search.dart';

class weatherscreen extends StatelessWidget {
  const weatherscreen({super.key});

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

      body: const Column(
 crossAxisAlignment: CrossAxisAlignment.center,

          children: [

            SizedBox(height: 150,),

            Text(" Cairo",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold,),),
            Text(" Update : 12:15 pm",style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.normal,),),
            SizedBox(
              height: 50,
            ),
            Row(

                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.sunny,size: 70,),
                  SizedBox(width: 50,),
                  Text("30",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold,),),
                  SizedBox(width: 50,),
                  Column(

                    children: [
                      Text("Max : 35",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal,),),
                      Text("Min : 20",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.normal,),),

                    ],
                  ),



                ],

            ),
            SizedBox(height: 50,),
            Text(" Sunny",style: TextStyle(color: Colors.black,fontSize: 28,fontWeight: FontWeight.bold,),),
      ]),

    );
  }
}
