import 'package:flutter/material.dart';
import 'constant.dart';
class ButtonPages extends StatelessWidget {
  const ButtonPages(
      {super.key, required this.buttonTitle, required this.onPress});
  final String buttonTitle;
  final Function() onPress;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        color: kbuttonColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: kbuttonHeight,
        padding: const EdgeInsets.only(bottom: 10.0),
        child:  Center(
          child: Text(
            buttonTitle,
            style: buttonTextResult,
          ),
        ),
      ),
    );
  }
}
