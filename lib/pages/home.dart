import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  Map data = {};
  @override
  Widget build(BuildContext context) {

   data = data.isNotEmpty ? data : ModalRoute.of(context).settings.arguments;
   //print(data);

 //String bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
 String bgImage;
//isDayTime can be null if time data is not found (no internet connection)
if(data['isDayTime'] != null){
//set background image
bgImage = data['isDayTime'] ? 'day.png' : 'night.png';
}else{
//set the bgImage to 'day.png'
bgImage = 'day.png';
}

    return Scaffold(
      body: SafeArea(
        child:Container(
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage('images/$bgImage'),
            fit: BoxFit.cover,
            ),
          ),
                  child: Padding(
            padding:  EdgeInsets.only(top:120.0),
            child: Column(children: [
              FlatButton.icon(
                shape: RoundedRectangleBorder(borderRadius:BorderRadius.circular(20.0)),
                color: Colors.yellow[50],
                textColor: Colors.black,
                onPressed: ()async{
            dynamic  result = await  Navigator.pushNamed(context,'/choose_location');
                    if(result !=null){
                   setState((){
                     data = {
                       'time' : result['time'],
                       'location ' : result['location'],
                       'isDayTime' : result['isDayTime'],
                       'flag'    : result['flag'], 
                        'timey':result['timey'],          
                        };
                   });
                    }
                },
                icon: Icon(Icons.location_on) ,
                label: Text('Choose location',style: TextStyle(),
                ),
              ),
                SizedBox(height:30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data['location'],style:TextStyle(fontSize: 30.0, letterSpacing: 2.0 ,color: Colors.white )
                    ),
                   
                  ],
                ),
                 SizedBox(height:20.0),
                    
                       Text(
                         data['time'],
                          style: TextStyle(fontSize:66.0,
                          color: Colors.white),
                          ),
                      Text(data['timey'], style: TextStyle(fontSize:20.0,),),
            ],
            ),
          ),
        ),
      ),
    );
  }
}
