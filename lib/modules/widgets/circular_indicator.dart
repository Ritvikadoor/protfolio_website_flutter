import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/constants.dart';

class AnimatedCircularIndicator extends StatelessWidget {
  const AnimatedCircularIndicator({
    Key? key,
    required this.percentage,
    required this.label,
  }) : super(key: key);
  final double percentage;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        AspectRatio(
          aspectRatio: 1,
          child: TweenAnimationBuilder(
            tween: Tween<double>(begin: 0, end: percentage),
            duration: defaultDuration,
            builder: (context, double value, child) {
              return Stack(
                fit: StackFit.expand,
                children: [
                  CircularProgressIndicator(
                    value: value,
                    color: primaryColor,
                    backgroundColor: darkColor,
                  ),
                  Center(
                    child: Text(
                      (value * 100).toInt().toString() + "%",
                      style: Theme.of(context).textTheme.subtitle1,
                    ),
                  ),
                ],
              );
            },
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          label,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.subtitle2,
        )
      ],
    );
  }
}
