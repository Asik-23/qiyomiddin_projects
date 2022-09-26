




import 'package:flutter/material.dart';

import 'main.dart';

class MyApp2 extends StatefulWidget {
  const MyApp2({Key? key}) : super(key: key);

  @override
  State<MyApp2> createState() => _MyApp2State();
}

class _MyApp2State extends State<MyApp2> {
  @override
  Widget build(BuildContext context) {
    String _email,_password;
    return MaterialApp(
      home: Scaffold(
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
            const Text("Asigram",style: TextStyle(color: Colors.black,fontSize: 35),),
            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 30,vertical: 0
            ),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Name"),
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 30,vertical: 0
            ),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Email"),
                  validator: (input)=>!input!.contains("@")?"Please enter a valid email":null,
                  onSaved: (input)=>_email = input!,
                ),
              ),
            ),
            Padding(padding: const EdgeInsets.symmetric(
                horizontal: 30,vertical:10
            ),
              child: Form(
                autovalidateMode: AutovalidateMode.always,
                child: TextFormField(
                  decoration: const InputDecoration(labelText: "Password"),
                  validator: (input)=>input!.length<8?"Password is not safe":null,
                  onSaved: (input)=>_password = input!,
                ),
              ),
            ),

            ElevatedButton(onPressed: (){},
              style: ElevatedButton.styleFrom(
                  fixedSize: const Size(300, 45)
              ),
              child: const Text("Sign up", ),
            ),
            const SizedBox(
              height: 20,
              width: 20,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already have an account?",style: TextStyle(color: Colors.black),),
                TextButton(onPressed: () async {
                  final result=Navigator.of(context).pop(MaterialPageRoute(builder:(context)=>MyApp()));
                }, child: const Text("Log in",style: TextStyle(color: Colors.black),))
              ],
            ),


          ],


        ),

      ),

    );

  }
}
