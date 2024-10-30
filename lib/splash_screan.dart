import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ui_design/Home_page.dart';
import 'package:ui_design/colors.dart';

class Splash_screan extends StatefulWidget {
  const Splash_screan({super.key});

  @override
  State<Splash_screan> createState() => _Splash_screanState();
}

class _Splash_screanState extends State<Splash_screan> {
 @override
   void initState() {
     super.initState();
     Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement( MaterialPageRoute(builder: (context)=>const Home_Page()));
     });
   }

  @override
  Widget build(BuildContext context) {
    
   
   

    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
            Grad("0052A2"),
            Grad("00172D"),
            // Grad("00172D")
          ])),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            const Text('Travel',style: TextStyle(fontFamily: "Blue",fontSize: 35 ,color: Colors.white,decoration: TextDecoration.none,),),
           const SizedBox(width: 10,),
          Image.asset(
            'assets/icon/Agency.png',
            width: 30,
            height: 30,
            color: Colors.white,
          ),
        ],),

        const  SizedBox(height: 10),
        const  Text("Find Your Dream",style: TextStyle(decoration: TextDecoration.none, color: Colors.white,fontSize: 15),),
        const  SizedBox(height: 10),
        const  Text("Destination With Us",
         style: TextStyle(decoration: TextDecoration.none,color: Colors.white,fontSize: 15),),
        ],
      ),
    );
  }
}
