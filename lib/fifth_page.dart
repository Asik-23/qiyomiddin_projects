
import 'package:flutter/material.dart';
import 'package:untitled2/sixth_page.dart';

class HomeTask extends StatefulWidget {
   const HomeTask({Key? key}) : super(key: key);
 
   @override
   State<HomeTask> createState() => _HomeTaskState();
 }
 
 class _HomeTaskState extends State<HomeTask> {

   @override
   Widget build(BuildContext context) {
     return Scaffold(
     body: Container(
       color: Colors.blue,
       child: Column(
         mainAxisAlignment: MainAxisAlignment.center,
         children: [
           const Image(image:AssetImage('assets/image/dwed.jpg'),

           ),
           const Center(
            child: Text("DWED",style: TextStyle(color: Colors.white,fontSize: 80),)
         ),
           TextButton(onPressed: (){
             final result=Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const HomeTask2()));
           }, child: const Text(
             'Next page',style: TextStyle(
             color: Colors.white,
             fontSize: 20
           ),
           ))

         ],
       ),
     ),
     );
   }
 }
 