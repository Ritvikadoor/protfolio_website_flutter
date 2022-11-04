import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/high_light.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/high_lights_info.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/main_banner_home.dart';
import 'package:ritvik_p_pramod/modules/view/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      children: [
        HomeScreenBanner(),
        SizedBox(
          height: 20,
        ),
        HighLightsInfo(),
      ],
    );
  }
}
