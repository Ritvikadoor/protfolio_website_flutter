import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/high_lights_info.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/main_banner_home.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/my_projects.dart';
import 'package:ritvik_p_pramod/modules/view/main_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MainScreen(
      children: [
        HomeScreenBanner(),
        HighLightsInfo(),
        MyProjects(),
      ],
    );
  }
}
