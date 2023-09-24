
import 'package:geolocator/geolocator.dart';
import 'package:flutter/material.dart';

class Mylocation extends StatefulWidget {
  const Mylocation({super.key});

  @override
  State<Mylocation> createState() => _MylocationState();
}

class _MylocationState extends State<Mylocation> {
  var locationMessage='';

 void getcurrentlocation() async{
  var position= await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
  var lastposition =await Geolocator.getLastKnownPosition();
  print(lastposition);
  

  setState(() {
    locationMessage ='$position.latitude, $position.longitude ';
    
  });
   
 }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Get Current Location',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),),
      body: Center(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            Icons.location_city_rounded,
            size:56.0,
            color: Colors.blue,
          
          ),
          SizedBox(
            height: 20,  
          ),
          Text('Get User Location',style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold),),
          SizedBox( height: 10,),
          Text(locationMessage),
          ElevatedButton(onPressed: (){
            getcurrentlocation();
          },child: Text("Get Current Location",style: TextStyle(color: Color.fromARGB(255, 59, 49, 49)),),)
        ],
      ),
      ),
      );
      
  
  }
}