import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';

class ExploreNowButton extends StatelessWidget {
  const ExploreNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: TextButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: defaultPadding * 2,
              vertical: defaultPadding,
            ),
            backgroundColor: primaryColor),
        onPressed: () {},
        child: Text(
          "EXPLORE NOW",
          style: TextStyle(color: darkColor, fontWeight: FontWeight.bold),
        ));
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text.rich(TextSpan(text: "<", children: [
      TextSpan(text: "Flutter", style: TextStyle(color: primaryColor)),
      TextSpan(text: ">"),
    ]));
  }
}

class AnimatedTexting extends StatelessWidget {
  const AnimatedTexting({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(animatedTexts: [
      TyperAnimatedText("Responsive Android Mobile Applications",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("Complete E-commerce app for Android & IOS",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("Personalized Mobile Applications",
          speed: Duration(milliseconds: 60)),
    ]);
  }
}
