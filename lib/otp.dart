import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'phone.dart';
import 'signup.dart';



class Myotp extends StatefulWidget {
  const Myotp({super.key});

  @override
  State<Myotp> createState() => _MyotpState();
}

class _MyotpState extends State<Myotp> {
  @override
  Widget build(BuildContext context) {

    final defaultPinTheme = PinTheme(
  width: 56,
  height: 56,
  textStyle: TextStyle(fontSize: 20, color: Color.fromRGBO(30, 60, 87, 1), fontWeight: FontWeight.w600),
  decoration: BoxDecoration(
    border: Border.all(color: Color.fromRGBO(234, 239, 243, 1)),
    borderRadius: BorderRadius.circular(20),
  ),
);

final focusedPinTheme = defaultPinTheme.copyDecorationWith(
  border: Border.all(color: Color.fromRGBO(114, 178, 238, 1)),
  borderRadius: BorderRadius.circular(8),
);

final submittedPinTheme = defaultPinTheme.copyWith(
  decoration: defaultPinTheme.decoration?.copyWith(
    color: Color.fromRGBO(234, 239, 243, 1),
  ),
);

    return Scaffold(

      body: Container(
        margin: EdgeInsets.only(left:25,right: 25),
        alignment: Alignment.center,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // Image.network('  https://th.bing.com/th?id=OIP.t_ln0ZMB6-61ddyTIw35swHaHj&w=247&h=252&c=8&rs=1&qlt=90&o=6&pid=3.1&rm=2',width: 230,height: 150,),

               SizedBox(
                height: 10,
              ),
              
              


              Text('Phone Varification' ,style: TextStyle(fontSize: 22 ,fontWeight: FontWeight.bold),),
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



           Pinput(
  // defaultPinTheme: defaultPinTheme,
  // focusedPinTheme: focusedPinTheme,
  // submittedPinTheme: submittedPinTheme,
  // validator: (s) {
  //   return s == '2222' ? null : 'Pin is incorrect';
  // },
  pinputAutovalidateMode: PinputAutovalidateMode.onSubmit,
  showCursor: true,
  // onCompleted: (pin) => print(pin),
),




              
              SizedBox(
                   height: 20,
              ),
              SizedBox(
                height: 45,
                width: double.infinity,
                child: ElevatedButton(onPressed:(){
                  Navigator.pushNamed(context,'signup');
                }, child: Text('Verify code'),style: ElevatedButton.styleFrom(
                primary: Colors.blue.shade600,shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))
              ),) ,
              ),
              Row(
                children: [
                  TextButton(onPressed: (){
                    Navigator.pushNamed(context, 'phone');
                  }, child: Text("Edit phone number ?",style: TextStyle(color: Colors.black),))
                ],
              )
              
            ],
          ),
        ),
      ),
    );
  }
}