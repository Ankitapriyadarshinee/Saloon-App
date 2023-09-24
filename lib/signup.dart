import 'package:flutter/material.dart';

class Mysignup extends StatefulWidget {
  const Mysignup({super.key});

  @override
  State<Mysignup> createState() => _MysignupState();
}

class _MysignupState extends State<Mysignup> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(image: DecorationImage(image:AssetImage ('images/font.jpeg'), fit: BoxFit.cover)),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          // height: MediaQuery.of(context).size.height-50,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children:<Widget> [
              Column(
                children:<Widget> [
                  Text('sign up',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,),),
                      SizedBox(
                        height: 5,
                      ),
                      Text('Create an account', style: TextStyle(fontSize: 15,color: Colors.grey[700]),)
                ],
              ),
              Column(
                children:<Widget> [
                  inputFile(label: 'FULL NAME' ),
                  inputFile(label: 'EMAIL'),
                  inputFile(label: 'PHONE NO.'),
                  inputFile(label: 'ADDRESS')
                ],
              ),
              Container(
                padding: EdgeInsets.only(top:3,left: 3 ),
                decoration: BoxDecoration(
                  // borderRadius: BorderRadius.circular(),
                  border: Border(
                    bottom: BorderSide(color: Colors.black),
                    top: BorderSide(color: Colors.black),
                    left: BorderSide(color: Colors.black),
                    right: BorderSide(color: Colors.black),
                  )
                ),
                 child: MaterialButton(onPressed: (){
                     Navigator.pushNamed(context, 'location');
                 }, child: Text(' Submit')),
                
                
              )
            ],
          ),
        ),
      ),
    );
  }
}


Widget inputFile({label,obscureText=false})
{
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children:<Widget> [
      Text(
          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black
          ), 
      ),
      SizedBox(
        height: 5,
      ),
    TextField(
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(vertical: 0,horizontal:10 ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black)
        )
      ),
    )
    ],
  );
}