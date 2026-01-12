import 'package:flutter/material.dart';
import 'package:fmc_part_5/screens/profile/profile.dart';
import '../../theme.dart';
import '../../shared/styled_text.dart';
import '../../models/character.dart';

class CharacterCard extends StatelessWidget {
  const CharacterCard(this.character, {super.key});

  final Character character;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: AppColors.secondaryColor,
      surfaceTintColor: Colors.transparent,
      shape: const RoundedRectangleBorder(),
      shadowColor: Colors.transparent,
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Row(
          children: [
            Image.asset("assets/img/vocations/${character.vocation.image}",
              width: 50
            ),

            const SizedBox(width: 20),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyledHeading(character.name),
                StyledText(character.vocation.title),
              ],
            ),

            const Expanded(
              child: SizedBox(),
            ),

            IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                  builder: (ctx) => Profile(character: character),
                ));
              },
              icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
            )
          ]
        ),
      ),
    );
  }
}
