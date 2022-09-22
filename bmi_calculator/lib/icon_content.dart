import 'package:flutter/material.dart';
import 'constants.dart';

class IconContent extends StatelessWidget {
  IconContent({required this.icons, required this.label});
  final IconData icons;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icons,
          size: 80.00,
        ),
        SizedBox(
          height: 15.00,
        ),
        Text(
          label,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}
