import 'package:flutter/material.dart';
import 'package:fmc_part_2/theme.dart';

class DriverCard extends StatelessWidget {
  const DriverCard(this.driver, {super.key});

  final String driver;

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
            Text(driver),

            const Expanded(
              child: SizedBox(),
            ),

            IconButton(
              onPressed: () {},
              icon: Icon(Icons.arrow_forward, color: AppColors.textColor),
            )
          ]
        ),
      ),
    );
  }
}
