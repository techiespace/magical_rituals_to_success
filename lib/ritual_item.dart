import 'package:flutter/material.dart';
import 'package:magical_rituals_to_success/models/ritual.dart';
import 'package:magical_rituals_to_success/ritual_description_screen.dart';

class RitualItem extends StatelessWidget {
  final String title;
  final String description;
  final Color color;

  RitualItem(this.title, this.description, this.color);

  void selectRitual(BuildContext ctx) {
    Navigator.of(ctx).push(
      MaterialPageRoute(builder: (_) {
        return RitualDescriptionScreen();
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => selectRitual(context),
      child: Container(
        margin: const EdgeInsets.all(20),
        padding: const EdgeInsets.all(15),
        child: Text(
          title,
          style: TextStyle(
            fontSize: 20,
          ),
          textAlign: TextAlign.center,
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [color.withOpacity(0.7), color],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
      ),
    );
  }
}
