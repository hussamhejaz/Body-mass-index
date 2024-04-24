import 'package:flutter/material.dart';
class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {super.key, required this.colour, this.onPress ,   this.childCard});
  final Color colour;
  final Widget? childCard;
  final Function()? onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: colour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: childCard,
      ),
    );
  }
}