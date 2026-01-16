import 'package:flutter/material.dart';
import 'package:fmc_part_3/screens/create/create.dart';
import 'package:fmc_part_3/screens/home/character_card.dart';
import 'package:fmc_part_3/services/character_store.dart';
import 'package:provider/provider.dart';
import '../../shared/styled_text.dart';
import '../../shared/styled_button.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  void initState() {
    Provider.of<CharacterStore>(context, listen: false)
      .fetchCharactersOnce();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trainers'),
        centerTitle: true,
      ),
      body: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: Consumer<CharacterStore>(
                builder: (context, value, child) {
                  return ListView.builder(
                    itemCount: value.characters.length,
                    itemBuilder: (_, index) {
                      return Dismissible(
                        key: ValueKey(value.characters[index].id),
                        onDismissed: (direction) {
                          Provider.of<CharacterStore>(context, listen: false)
                            .removeCharacter(value.characters[index]);
                        },
                        child: CharacterCard(value.characters[index])
                      );
                    },
                  );
                }
              ),
            ),

            StyledButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => const CreateScreen(),
                ));
              },
              child: const StyledHeading('Create new Trainer'),
            )
          ]
        )
      ),
    );
  }
}