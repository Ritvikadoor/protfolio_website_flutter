import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';

class ExploreNowButton extends StatelessWidget {
  const ExploreNowButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, top: 10),
      child: ElevatedButton(
          style: TextButton.styleFrom(
              padding: EdgeInsets.symmetric(
                horizontal: defaultPadding * 2,
                vertical: defaultPadding,
              ),
              backgroundColor: bgColor),
          onPressed: () {},
          child: Text(
            "EXPLORE NOW",
            style: TextStyle(color: primaryColor, fontWeight: FontWeight.bold),
          )),
    );
  }
}

class FlutterCodedText extends StatelessWidget {
  const FlutterCodedText({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text.rich(TextSpan(text: "< ", children: [
      TextSpan(text: "Flutter", style: TextStyle(color: bgColor)),
      TextSpan(text: " >"),
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
      TyperAnimatedText("Android-IOS Mobile Applications",
          speed: Duration(milliseconds: 60)),
      TyperAnimatedText("WEB DEVELOPEMENT", speed: Duration(milliseconds: 60)),
      TyperAnimatedText("Software & IoT Integrations",
          speed: Duration(milliseconds: 60)),
    ]);
  }
}
