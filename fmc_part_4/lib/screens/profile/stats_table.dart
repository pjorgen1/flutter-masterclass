import 'package:flutter/material.dart';
import 'package:fmc_part_4/models/character.dart';
import 'package:fmc_part_4/shared/styled_text.dart';
import 'package:fmc_part_4/theme.dart';

class StatsTable extends StatefulWidget {
  const StatsTable(this.character, {super.key});

  final Character character;

  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(16),
      child: Column(
        children: [

          // avalaible points
          Container(
            color: AppColors.secondaryColor,
            padding: const EdgeInsets.all(8),
            child: Row(
              children: [
                Icon(Icons.star,
                  color: widget.character.points > 0 ? AppColors.primaryAccent : Colors.black, 
                ),
                const SizedBox(width: 20),
                const StyledText('Stat points available: '),
                const Expanded(child: SizedBox(width: 20)),
                StyledHeading(widget.character.points.toString()),
              ]
            ),
          ),

          // stats table
          Table(
            children: widget.character.statsAsFormatttedList.map((stat) {
              return TableRow(
                decoration: BoxDecoration(
                  color: AppColors.tertiaryColor,
                ),
                children: [

                  // stat title
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: StyledHeading(stat['title']!),
                    ),
                  ),

                  // stats value
                  TableCell(
                    child: Padding(
                      padding: const EdgeInsets.all(8),
                      child: StyledHeading(stat['value']!),
                    ),
                  ),

                  // icon to increase stat
                  TableCell(
                    child:IconButton(
                      icon: Icon(Icons.arrow_upward, color: Colors.green),
                      onPressed: () {
                        widget.character.increaseStat(stat['title']!);
                      }
                    )
                  ),

                  // icon to decrease stat
                  TableCell(
                    child:IconButton(
                      icon: Icon(Icons.arrow_downward, color: Colors.yellow),
                      onPressed: () {
                        widget.character.decreaseStat(stat['title']!);
                      }
                    )
                  ),
                ],
              );
            }).toList(),
          ),

        ],
      ),
    );
  }
}