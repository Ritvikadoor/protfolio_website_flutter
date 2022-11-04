import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/widgets/area_info.dart';
import 'package:ritvik_p_pramod/modules/widgets/coding.dart';
import 'package:ritvik_p_pramod/modules/widgets/knowledge.dart';
import 'package:ritvik_p_pramod/modules/widgets/linear_animated.dart';
import 'package:ritvik_p_pramod/modules/widgets/my_info.dart';
import 'package:ritvik_p_pramod/modules/widgets/skills.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          MyInfo(),
          Expanded(
              child: SingleChildScrollView(
            padding: EdgeInsets.all(defaultPadding),
            child: Column(
              children: const [
                AreaInfoText(
                  title: "Residence",
                  text: "Kerala",
                ),
                AreaInfoText(
                  title: "City",
                  text: "Kannur",
                ),
                AreaInfoText(
                  title: "Age",
                  text: "22",
                ),
                Skills(),
                SizedBox(
                  height: 10,
                ),
                Coding(),
                Knowledges(),
                Divider(),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
