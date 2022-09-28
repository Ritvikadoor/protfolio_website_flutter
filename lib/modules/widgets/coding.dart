import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/constants.dart';
import 'package:ritvik_p_pramod/modules/widgets/linear_animated.dart';

class Coding extends StatelessWidget {
  const Coding({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Coding",
            style: Theme.of(context).textTheme.subtitle1,
          ),
        ),
        const AnimatedLinerIndicator(
          label: "Flutter",
          percentage: 0.75,
        ),
        const AnimatedLinerIndicator(
          label: "Dart",
          percentage: 0.7,
        ),
        const AnimatedLinerIndicator(
          label: "Figma",
          percentage: 0.9,
        ),
        const AnimatedLinerIndicator(
          label: "HTML",
          percentage: 0.50,
        ),
        const AnimatedLinerIndicator(
          label: "API Integration",
          percentage: 0.9,
        ),
        const AnimatedLinerIndicator(
          label: "Firebase",
          percentage: 0.65,
        ),
      ],
    );
  }
}
