
import 'package:flutter/material.dart';
class HomeTask3 extends StatefulWidget {
  const HomeTask3({Key? key}) : super(key: key);

  @override
  State<HomeTask3> createState() => _HomeTask3State();
}

class _HomeTask3State extends State<HomeTask3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
        child: Column(
        children: [

        Container(
        color: Colors.blue,
        child: const Image(image:AssetImage('assets/image/dwed.jpg'),height: 250,width:600,))

        ],
        )
    )
    ) ;
  }
}
