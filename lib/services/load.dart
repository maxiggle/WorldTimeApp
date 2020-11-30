import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:timeapp/services/worldtime.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  
  void setUp() async{

    WorldTime instance = WorldTime(url:'Africa/Lagos',location:'Lagos', flag: 'Lagos.png', );
    await instance.getTime();
   Navigator.pushReplacementNamed(context, '/home', arguments: {
     'location':instance.location,
     'flag': instance.flag,
     'time': instance.time,
      'timey':instance.timey,
     'isDayTime': instance.isDayTime,
     
   });

   
   //print(instance.isDayTime);
  }
  
  @override
  void initState() {
    super.initState();
   setUp();
   
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.all(50.0),
      child: Center(
        child: SpinKitFadingCircle(
  color: Colors.deepPurple[600],
  size: 50.0,
),
      ),
      ),
    );
  }
}
