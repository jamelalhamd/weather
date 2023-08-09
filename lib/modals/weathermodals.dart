import 'package:flutter/cupertino.dart';
//http://api.weatherapi.com/v1/current.json?key=34cba36f53ca49108a0205029230908&q=London&aqi=yes
class WeatherModal {


 DateTime date;
  double tem;
  double MINtem;
 double MAXtem;
 IconData iconData;
 String state;

  WeatherModal({
   required this.date, required this.tem,required this.state, required this.MINtem, required this.MAXtem, required this.iconData});



  factory WeatherModal.fromJson(dynamic map) {
var apijason=map['forecast']['forecastday'][0]['day'];

    return WeatherModal(
      date: apijason["date"],

      state:  map['condition']['text'],
      MINtem:apijason['mintemp_c'] ,
      tem:  apijason['avgtemp_c'] ,
      iconData:  apijason['icon'] ,
      MAXtem: apijason['maxtemp_c'] ,


    );



  }

 @override
  String toString() {
    return 'WeatherModal{date: $date, tem: $tem, MINtem: $MINtem, MAXtem: $MAXtem, iconData: $iconData, state: $state}';
  }
}


