import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';

class AnimatedLinerIndicator extends StatelessWidget {
  const AnimatedLinerIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding),
      child: TweenAnimationBuilder(
        tween: Tween<double>(begin: 0, end: percentage),
        duration: defaultDuration,
        builder: (context, double value, child) => Column(
          children: [
            Row(
              children: [
                Text(
                  label,
                  style: TextStyle(color: Colors.white),
                ),
                Text(
                  (value * 100).toInt().toString() + "%",
                )
              ],
            ),
            LinearProgressIndicator(
              value: value,
              color: primaryColor,
              backgroundColor: darkColor,
            ),
          ],
        ),
      ),
    );
  }
}
