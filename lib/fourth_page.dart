
import 'package:flutter/material.dart';

class InsideOfApp extends StatefulWidget {
  const InsideOfApp({Key? key}) : super(key: key);

  @override
  State<InsideOfApp> createState() => _InsideOfAppState();
}

class _InsideOfAppState extends State<InsideOfApp> {
  int selectedIndex=0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Asigram'),
          centerTitle: true,
        ),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: true,
          unselectedItemColor: Colors.blue,
          selectedItemColor: Colors.red,
          items: const[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.message), label: 'message'),
            BottomNavigationBarItem(
                icon: Icon(Icons.video_collection), label: 'video'),
            BottomNavigationBarItem(
                icon: Icon(Icons.notifications), label: 'video'),
          ],
        ),
        drawer: Drawer(
          backgroundColor: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: const EdgeInsets.all(20),
                color: const Color.fromARGB(255, 38, 107, 164),
                height: 200,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: const Text(
                        'Q',
                        style: TextStyle(color: Colors.black, fontSize: 35),
                      ),
                    ),
                    const Text(
                      'Qiyomiddin Tursunov',
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                    const Text(
                      'tursunovqiyomiddin@gmail.com',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );

  }}