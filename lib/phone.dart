import 'package:flutter/material.dart';
import 'otp.dart';

class Myphone extends StatefulWidget {
  const Myphone({super.key});

  @override
  State<Myphone> createState() => _MyphoneState();
}

class _MyphoneState extends State<Myphone> {

  TextEditingController countrycode=TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    countrycode.text='+91' ;
    super.initState();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
      decoration: BoxDecoration(image: DecorationImage(image:AssetImage ('images/font.jpeg'), fit: BoxFit.cover)),
        // margin: EdgeInsets.only(left:25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              
              // Image.network(' https://th.bing.com/th?id=OIP.t_ln0ZMB6-61ddyTIw35swHaHj&w=247&h=252&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2 ',width: 230,height: 150,),

               SizedBox(
                height: 10,
              ),
              
              


              Text('Phone Verification' ,style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.bold),),
              SizedBox(
                height: 10,
              ),
              Text('We need to register your phone before getting started' ,style: TextStyle(fontSize:18
              ) ,
              textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 20,
              ),

              Container(
                height: 55,
                decoration: BoxDecoration(
                  border: Border.all(width: 1,color: Colors.black),
                  borderRadius: BorderRadius.circular(10),


                ),
                  child:Row(
                children: [
                   SizedBox(width: 10,),
                  SizedBox(
                    width: 40,
                    child: TextField(
                      controller:countrycode ,
                      decoration: InputDecoration(
                        border: InputBorder.none
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Text('|',style: TextStyle(fontSize: 33,color: Colors.grey),),

          

                  Expanded(
            
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none ,hintText: 'phone'
                      ),
                    ),
                  )
                ],
              ), 
              ),
              SizedBox(
                   height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushNamed(context, 'otp');
                }, child: Text('send the code',style: TextStyle(color: Colors.white),),style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade600,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),) ,
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}