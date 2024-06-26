import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/homebanner_widgets.dart';
import 'package:ritvik_p_pramod/responsive/responsive.dart';

class HomeScreenBanner extends StatelessWidget {
  const HomeScreenBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: Responsive.isMobile(context) ? 2.5 : 3,
      child: Stack(
        fit: StackFit.expand,
        children: [
          Image.asset(
            "about_me.jpg",
            fit: BoxFit.fitWidth,
          ),
          Container(
            color: darkColor.withOpacity(0.2),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Discovering my Amazing \nArt Space!",
                    style: Responsive.isDesktop(context)
                        ? Theme.of(context).textTheme.headline3!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)
                        : Theme.of(context).textTheme.headline6!.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.white)),
                DefaultTextStyle(
                  style: Theme.of(context).textTheme.subtitle1!,
                  child: Row(
                    children: [
                      if (!Responsive.isMobileLarge(context))
                        FlutterCodedText(),
                      if (!Responsive.isMobileLarge(context))
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                      Text("I build  "),
                      Responsive.isMobile(context)
                          ? Expanded(child: AnimatedTexting())
                          : AnimatedTexting(),
                      if (!Responsive.isMobileLarge(context))
                        SizedBox(
                          width: defaultPadding / 2,
                        ),
                      if (!Responsive.isMobileLarge(context))
                        FlutterCodedText(),
                    ],
                  ),
                ),
                if (!Responsive.isMobileLarge(context))
                  const ExploreNowButton(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
