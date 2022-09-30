
import 'package:flutter/material.dart';
import 'package:untitled2/fifth_page.dart';
import 'package:untitled2/fourth_page.dart';
import 'package:untitled2/second_page.dart';
import 'package:untitled2/seventh_page.dart';



void main(List<String> args) {
runApp(const MaterialApp(
    home: HomeTask()));
}
int atIndex=0;
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    String _email="",_password="";
    bool a=false,b=false;
    return  Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: const Text(
            "Asigram",
            style: TextStyle(color: Colors.white,fontSize: 20,),
          ),
          centerTitle: true,
        ),
        body:  Column(
          mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Asigram",style: TextStyle(color: Colors.black,fontSize: 35,),),
                Padding(padding: const EdgeInsets.symmetric(
                  horizontal: 30,vertical: 0
                ),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "Email"),
                      validator: (input)=>!input!.contains("@")?"Please enter a valid email":null,
                      onSaved: (input)=>_email = input!,
                    ),
                  ),
                ),
                Padding(padding: const EdgeInsets.symmetric(
                    horizontal: 30,vertical:6
                ),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      decoration: const InputDecoration(labelText: "Password"),
                      validator: (input)=>input!.length<8?"Password is not safe":null,
                      onSaved: (input)=>_password = input!,


                    ),
                  ),
                ),

                ElevatedButton(onPressed: () async {
                 {
                    final result = Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => const InsideOfApp()));
                  }
                },
                  style: ElevatedButton.styleFrom(
                      fixedSize: const Size(300, 45)
                  ),
                  child: const Text("Log in", ),
                ),
                const SizedBox(
                  height: 20,
                  width: 20,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account?"),
                    TextButton(onPressed: () async{
                      final result=Navigator.of(context).push(MaterialPageRoute(builder:(context)=>const MyApp2()));
                    }, child: const Text("Sign up",style: TextStyle(color: Colors.black),))
                  ],
                ),


              ],


        ),



    );

  }
}
