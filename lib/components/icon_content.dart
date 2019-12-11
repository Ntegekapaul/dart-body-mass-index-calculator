import 'package:flutter/material.dart';
import 'constants.dart';


class IconContent extends StatelessWidget {
  IconContent({@required this.icon, @required this.label});

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 70.0,
        ),
        SizedBox(
          height: 5.0,
        ),
        Text(
          label,
          style: klabelTextStyle,
        ),
      ],
    );
  }
}
