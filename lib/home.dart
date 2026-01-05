import 'package:flutter/material.dart';
import 'package:my_driver/driver_list.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Driver"),
        backgroundColor: const Color.fromARGB(255, 255, 240, 0),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            color: Colors.brown[200],
            padding: const EdgeInsets.all(20),
            child: const Text('Find a driver...'),
          ),
          Container(
            color: Colors.brown[100],
            padding: const EdgeInsets.all(20),
            child: const DriverList(),
          ),
          Expanded(
            child: Image.asset('assets/img/porsche_spyder_1920x1080.jpg',
              fit: BoxFit.fitWidth,
              alignment: Alignment.topCenter
            )
          ),
        ]
      )
    );
  }
}