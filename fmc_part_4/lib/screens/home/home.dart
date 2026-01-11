import 'package:flutter/material.dart';
import 'package:fmc_part_4/screens/create/create.dart';
import '../../shared/styled_text.dart';
import '../../shared/styled_button.dart';
import 'character_card.dart';
import '../../models/character.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Characters'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: characters.length,
                itemBuilder: (_, index) {
                  return CharacterCard(characters[index]);
                },
              ),
            ),

            StyledButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const Create(),
                ));
              },
              child: const StyledHeading('Create new character'),
            )
          ]
        )
      ),
    );
  }
}