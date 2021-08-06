import 'package:bmi_calculator/components/botton_button.dart';
import 'package:bmi_calculator/components/reusable_cart.dart';
import 'package:flutter/material.dart';

import '../constants.dart';
import 'input_page.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage({this.bmi, this.bmiText, this.bmiPara});
  final String bmi;
  final String bmiText;
  final String bmiPara;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Container(
              child: Text(
                "Your result",
                style: kTitleTextStyle,
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    bmiText,
                    style: kResultTextStyle,
                  ),
                  Text(
                    bmi,
                    style: kBmiTextStyle,
                  ),
                  Text(
                    bmiPara,
                    style: kBodyTextStyle,
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.pop(
                context,
                MaterialPageRoute(
                  builder: (context) => InputPage(),
                ),
              );
            },
            buttonTitle: "RE-Calculate",
          )
        ],
      ),
    );
  }
}
