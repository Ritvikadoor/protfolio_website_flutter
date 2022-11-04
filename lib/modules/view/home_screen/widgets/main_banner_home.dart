import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/homebanner_widgets.dart';

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
                  children: const [
                    FlutterCodedText(),
                    SizedBox(
                      width: defaultPadding / 2,
                    ),
                    Text("I build  "),
                    AnimatedTexting(),
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
