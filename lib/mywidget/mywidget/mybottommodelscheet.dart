import 'package:flutter/material.dart';
import 'package:weather/mywidget/mywidget/myTextfield_pass.dart';
import 'package:weather/mywidget/mywidget/myTextfiledemail.dart';
import 'package:weather/mywidget/mywidget/mybutton1.dart';


class mybotommodelsheet extends StatelessWidget {
  const mybotommodelsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(onPressed: (){

      showModalBottomSheet(context: context, builder: (context) => SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(top: 15,bottom :MediaQuery.of(context).viewInsets.bottom),
          child:Column(
            children: [

              myTextfiled_email(label: 'email'),
              myTextfiled_pass(label: 'password'),
              myTextfiled_pass(label: 'password'),
              mybutton1(tite: 'click'),
              mybutton1(wight: 80,

                  tite: '<<<',onPressed: (){Navigator.pop(context);}),

            ],


          ),
        ),
      ));




    },

      child: Icon(Icons.add),






    );



    }
}


