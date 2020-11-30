import 'dart:convert';
import 'package:http/http.dart';
//import 'dart:convert';

import 'package:intl/intl.dart';


class WorldTime{

String location; // location for the Ui
String time;     //
String timey; // Time to display gfor that location
String flag;// Flag for the location
String url; // url for loaction endpoint
bool isDayTime;

WorldTime({this.location,this.flag,this.time, this.url,this.isDayTime});
   
 Future<void> getTime() async{
   try{
 //Make request
Response response = await get('http://worldtimeapi.org/api/timezone/$url');
   Map data =  jsonDecode(response.body);
   // print(data);
//get the time

   String datetime = data['datetime'];
   String offset = data['utc_offset'].substring(0,3);
  // String utc_datetime = data['utc_offset'];

  // print(datetime);
  // print(offset);
 // print(utc_datetime);

//Create DateTime obbject
   DateTime current = DateTime.parse(datetime);
 // print(now);
  current = current.add(Duration(hours:int.parse(offset)));
 
     //isDayTime = current.hour > 5 && current.hour < 19 ? true : false;
     if(current.hour > 5 && current.hour < 19 ){
       isDayTime = true;
     } else {
       isDayTime = false;
       }
     
     timey = DateFormat.yMMMMEEEEd().format(current);
    
     


    time = DateFormat.jm().format(current);
     //print(time);

   }
   catch(e){
   print('Caught an error:$e');
   time = '  You are offline';
   }
  
  }


}