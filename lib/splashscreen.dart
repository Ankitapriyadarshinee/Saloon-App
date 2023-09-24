import 'package:flutter/material.dart';
import 'main.dart';
import 'phone.dart';
import 'otp.dart';


class Mysplash extends StatefulWidget {
  const Mysplash({super.key});

  @override
  State<Mysplash> createState() => _MysplashState();
}

class _MysplashState extends State<Mysplash> {

 @override
  void initState() {
      
     Future.delayed(Duration(seconds:2), () {
     Navigator.of(context).push( MaterialPageRoute<void>(
        builder: (BuildContext context) => const Myphone(),
     ),);

     });
      super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Stack(
        fit: StackFit.expand,
        children:<Widget> [
          Container(
            decoration: BoxDecoration(color: Colors.orange),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children:<Widget> [
            Expanded(
              flex: 2, child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:<Widget> [
                    CircleAvatar(
                      backgroundColor: Colors.black,
                      radius: 60.0,
                      child: Icon(
                        Icons.shopping_basket,
                        color: Colors.amber,
                        size: 50.0,
                      ),
                    ),
                    Padding(padding: EdgeInsetsDirectional.only(top: 10.0)),
                    Text(' THE SALOON',style: TextStyle(color: Colors.black,fontSize: 24.0,fontWeight: FontWeight.bold),)
                    
                  ],
                ),
                
              ),
              
            )
          ],),
        ],
      ),
    
    );
  }
}