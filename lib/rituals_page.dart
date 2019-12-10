import 'package:flutter/material.dart';
import 'ritual_item.dart';
import 'rituals_data.dart';

class RitualsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView(
      children: RITUALS_DATA.map((ritualData) => RitualItem(ritualData.title,ritualData.description,Colors.orange)).toList(),
      gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 200,
        childAspectRatio: 1,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
      ),
    );
  }
}
