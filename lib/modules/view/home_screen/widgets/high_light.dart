import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';

class HighLight extends StatelessWidget {
  const HighLight({
    Key? key,
    required this.counter,
    this.label,
  }) : super(key: key);
  final Widget counter;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        counter,
        SizedBox(
          width: defaultPadding / 2,
        ),
        Text(
          label!,
          style: TextStyle(
            color: primaryColor,
            fontWeight: FontWeight.bold,
          ),
        )
      ],
    );
  }
}
