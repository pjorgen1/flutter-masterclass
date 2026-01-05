import 'package:flutter/material.dart';

class DriverList extends StatelessWidget {
  const DriverList({super.key});

  void selectDriver1() {
    print('John Doe is on the way!');
  }

  void selectDriver2() {
    print('Stacy Meyers is on the way!');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('John Doe: '),
            Text('15 minutes away '),
            Image.asset('assets/img/minimal_car_100x100.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded (child: SizedBox(width: 50)),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.amber[700],
                foregroundColor: Colors.brown[800],
              ),
              onPressed: selectDriver1,
              child: const Text('+'),
            )
          ]
        ),
        Row(
          children: [
            Text('Stacy Meyers: '),
            Text('10 minutes away '),
            Image.asset('assets/img/minimal_car_100x100.png',
              width: 25,
              color: Colors.brown[100],
              colorBlendMode: BlendMode.multiply,
            ),
            const Expanded (child: SizedBox(width: 50)),
            FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Colors.amber[700],
                foregroundColor: Colors.brown[800],
              ),
              onPressed: selectDriver1,
              child: const Text('+'),
            )
          ]
        ),
      ]
    );
  }
}
