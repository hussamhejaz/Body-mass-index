import 'constant.dart';
import 'package:flutter/material.dart';
import 'reusable_card.dart';
import 'calculate_button.dart';

class Result extends StatelessWidget {
  const Result({super.key , required this.bmiResalt , required this.resaltText , required this.desc});
  final String bmiResalt;
  final String resaltText;
  final String desc;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20.0),
              alignment: Alignment.bottomLeft,
              child: const Text(
                'Your Result',
                style: ktitleResult,
              ),
            ),
          ),
           Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kactiveCardColor,
              childCard: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    resaltText,
                    style: kresult,
                  ),
                  Text(
                    bmiResalt,
                    style: kbmiTextStyle,
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                    style: kbodyText,
                  ),
                ],
              ),
            ),
          ),
          ButtonPages(buttonTitle: 'Re-Calculate', onPress:(){
            Navigator.pop(context);

          })
        ],
      ),
    );
  }
}
