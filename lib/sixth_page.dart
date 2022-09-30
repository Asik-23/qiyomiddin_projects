
import 'package:flutter/material.dart';
import 'package:untitled2/seventh_page.dart';



class HomeTask2 extends StatefulWidget {
  const HomeTask2({Key? key}) : super(key: key);

  @override
  State<HomeTask2> createState() => _HomeTask2State();
}

class _HomeTask2State extends State<HomeTask2> {
  late String _password;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [

        Container(
          color: Colors.blue,
            child: const Image(image:AssetImage('assets/image/dwed.jpg'),height: 250,width:600,)),
            const Text(
              "SIGN IN TO DWED",style: TextStyle(
              color: Colors.black,fontSize: 28,
            ),
            ),
            const Text(
              "By continuing Log in",style: TextStyle(
              color: Colors.grey,fontSize: 20,
            ),
            ),
            Container(
             height: 20,
            ),
            Form(
              autovalidateMode: AutovalidateMode.always,
              child: TextFormField(
                decoration: const InputDecoration(labelText: "  Login or phone number"),
              ),
            ),
            Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: TextFormField(
                decoration: const InputDecoration(labelText: "  Password",),
                validator: (input)=>input!.length<8?"Password is not safe":null,
                onSaved: (input)=>_password = input!,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(value: false, onChanged: (value){value=value;}),
                const Text("Remembered me"),
                Container(
                  width: 200,
                ),


                TextButton(onPressed: () async {

                }, child: const Text("Log in",style: TextStyle(color: Colors.blue,fontSize: 15),))
              ],
            ),
            TextButton(onPressed: ()  {
            }
            ,style: TextButton.styleFrom(fixedSize:const Size(400,50),backgroundColor:Colors.blue),   child: const Text("Log in",style: TextStyle(color: Colors.white,fontSize: 20,),)),
            Container(
              height: 80,
            ),
            Row(
              children: const [
                Expanded(
                  child: Divider(
                    color: Colors.grey,
                    thickness: 1,

                  ),
                )
              ],
            ),
            Container(
              height: 50,
            ),
            TextButton(onPressed: ()  {

            } ,
               style: TextButton.styleFrom(fixedSize:const Size(400,50),backgroundColor:Colors.white,side: const BorderSide(color: Colors.black)),
                child: const Text("Create an account",style: TextStyle(color: Colors.black,fontSize: 20,),)),



          ],
        ),
      ),
    );
  }
}
