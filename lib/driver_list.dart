import 'package:flutter/material.dart';
import 'package:my_driver/styled_button.dart';

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
            Text('John Doe ETA: $JOHNS_ETA '),

            if (JOHNS_ETA == 0)
              const Text("DriverInactive"),

            for (int i = 0; i < JOHNS_ETA; i++)
              Image.asset('assets/img/minimal_car_100x100.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            const Expanded (child: SizedBox(width: 50)),
            StyledButton(
              onPressed: increaseJohnETA,
              child: const Text('+'),
            ),
          ]
        ),
        Row(
          children: [
            Text('Stacy Meyers ETA: $STACYS_ETA '),

            if (STACYS_ETA == 0)
              const Text("Driver Inactive"),

            for (int i = 0; i < STACYS_ETA; i++)
              Image.asset('assets/img/minimal_car_100x100.png',
                width: 25,
                color: Colors.brown[100],
                colorBlendMode: BlendMode.multiply,
              ),

            const Expanded (child: SizedBox(width: 50)),
            StyledButton(
              onPressed: increaseStacyETA,
              child: const Text('+'),
            ),
          ]
        ),
      ]
    );
  }
}
