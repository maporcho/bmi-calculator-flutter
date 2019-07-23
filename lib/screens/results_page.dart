import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Container(
            child: Text(
              'You Result',
              style: kTitleTextStyle,
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: Color(0xFF1C1C2F),
              cardChild: Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text(
                      'OVERWEIGHT',
                      style: kResultClassificationTextStyle,
                    ),
                    Text(
                      '26.7',
                      style: kResultNumberTextStyle,
                    ),
                    Text(
                        "You're a little whale pacifier but that's ok, no need to worry about that my friend.",
                        textAlign: TextAlign.center,
                        style: kResultExplanationTextStyle)
                  ],
                ),
              ),
            ),
          ),
          BottomButton(
            label: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
