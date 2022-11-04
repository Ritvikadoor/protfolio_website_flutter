import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/view/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [HomeScreenBanner()],
    );
  }
}

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "lake-mountains-landscape-5k-4480x2520-62.jpg",
            fit: BoxFit.cover,
          ),
          Container(
            color: darkColor.withOpacity(0.5),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Discovering my Amazing \nArt Space!",
                style: Theme.of(context)
                    .textTheme
                    .headline3!
                    .copyWith(fontWeight: FontWeight.bold, color: Colors.white),
              ),
              DefaultTextStyle(
                style: Theme.of(context).textTheme.subtitle1!,
                child: Row(
                  children: [
                    FlutterCodedText(),
                    SizedBox(
                      width: defaultPadding / 2,
                    ),
                    Text("I build  "),
                    AnimatedText(),
                    SizedBox(
                      width: defaultPadding / 2,
                    ),
                    FlutterCodedText(),
                  ],
                ),
              ),
              ExploreNowButton(),
            ],
          )
        ],
      ),
    );
  }
}

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

class AnimatedText extends StatelessWidget {
  const AnimatedText({
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
