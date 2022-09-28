import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/widgets/circular_indicator.dart';

import '../../../constants.dart';

class Skills extends StatelessWidget {
  const Skills({
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
            "Skills",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        Row(
          children: const [
            Expanded(
              child: AnimatedCircularIndicator(
                percentage: 0.85,
                label: "Flutter",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularIndicator(
                percentage: 0.70,
                label: "Dart",
              ),
            ),
            SizedBox(
              width: defaultPadding,
            ),
            Expanded(
              child: AnimatedCircularIndicator(
                percentage: 0.65,
                label: "Firebase",
              ),
            ),
          ],
        )
      ],
    );
  }
}
