import 'package:flutter/material.dart';

class DriverList extends StatefulWidget {
  const DriverList({super.key});

  @override
  State<DriverList> createState() => _DriverListState();
}

class _DriverListState extends State<DriverList> {
  
  int JOHNS_ETA = 1;
  int STACYS_ETA = 1;
  
  void increaseJohnETA() {
    setState(() {
      JOHNS_ETA = JOHNS_ETA < 5 ? JOHNS_ETA + 1 : 1;
    });
  }

  void increaseStacyETA() {
    setState(() {
      STACYS_ETA = STACYS_ETA < 5 ? STACYS_ETA + 1 : 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text('John Doe ETA: '),
            Text('$JOHNS_ETA'),
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
              onPressed: increaseJohnETA,
              child: const Text('+'),
            )
          ]
        ),
        Row(
          children: [
            Text('Stacy Meyers ETA: '),
            Text('$STACYS_ETA'),
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
              onPressed: increaseStacyETA,
              child: const Text('+'),
            )
          ]
        ),
      ]
    );
  }
}
