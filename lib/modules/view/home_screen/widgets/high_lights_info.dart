import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/animated_counter.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/high_light.dart';

class HighLightsInfo extends StatelessWidget {
  const HighLightsInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: const [
        HighLight(
          counter: AnimatedCounter(
            value: 1254,
            text: "+",
          ),
          label: "Connections",
        ),
        HighLight(
          counter: AnimatedCounter(
            value: 236,
            text: "+",
          ),
          label: "Commits",
        ),
        HighLight(
          counter: AnimatedCounter(
            value: 24,
            text: "+",
          ),
          label: "GitHub Repos",
        ),
      ],
    );
  }
}
