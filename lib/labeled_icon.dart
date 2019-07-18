import 'package:flutter/material.dart';

const labelTextStyle = TextStyle(
  fontSize: 18.0,
  color: Color(0xFF8D8E98),
);

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
          style: labelTextStyle,
        )
      ],
    );
  }
}
