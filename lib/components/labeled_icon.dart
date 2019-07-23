import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class LabeledIcon extends StatelessWidget {
  final IconData iconData;
  final String text;

  LabeledIcon({@required this.iconData, @required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: 80.0,
        ),
        SizedBox(
          height: 2.0,
        ),
        Text(
          text,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
