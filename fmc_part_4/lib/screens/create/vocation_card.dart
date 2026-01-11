import 'package:flutter/material.dart';
import 'package:fmc_part_4/models/vocation.dart';
import 'package:fmc_part_4/shared/styled_text.dart';
import 'package:fmc_part_4/theme.dart';

class VocationCard extends StatelessWidget {
  const VocationCard({
    super.key,
    required this.vocation,
    required this.onTap,
    required this.selected,
  });

  final Vocation vocation;
  final void Function(Vocation) onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(vocation);
      },
      child: Card(
        color: selected ? AppColors.primaryColor : AppColors.secondaryColor,
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Row(
            children: [
      
              // vocation img
              Image.asset('assets/img/vocations/${vocation.image}',
                width: 80,
                colorBlendMode: BlendMode.color,
                color: !selected ? Colors.black : Colors.transparent,
              ),
              const SizedBox(width: 10),
      
              Expanded(
                child: Column(
                  children: [
                    StyledHeading(vocation.title),
                    StyledText(vocation.description),
                  ]
                )
              )
            ]
          )
        )
      ),
    );
  }
}