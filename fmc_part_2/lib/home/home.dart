import 'package:flutter/material.dart';
import 'package:fmc_part_2/shared/styled_text.dart';
import 'package:fmc_part_2/shared/styled_button.dart';
import 'package:fmc_part_2/home/driver_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List drivers = ['ash', 'misty', 'brock', 'jessie', 'james', 'pikachu'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Drivers'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: drivers.length,
                itemBuilder: (_, index) {
                  return DriverCard(drivers[index]);
                },
              ),
            ),

            StyledButton(
              onPressed: () {},
              child: const StyledHeading('Add to favorites'),
            )
          ]
        )
      ),
    );
  }
}