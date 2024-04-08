import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/widgets/area_info.dart';
import 'package:ritvik_p_pramod/modules/widgets/coding.dart';
import 'package:ritvik_p_pramod/modules/widgets/knowledge.dart';
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
              children: [
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
                TextButton(
                  onPressed: () {},
                  child: FittedBox(
                    child: Row(
                      children: [
                        Text(
                          "Download CV",
                          style: TextStyle(
                              color:
                                  Theme.of(context).textTheme.bodyText1!.color),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(FontAwesomeIcons.fileDownload))
                      ],
                    ),
                  ),
                ),
                Divider(),
                Container(
                  padding: EdgeInsets.only(top: defaultPadding),
                  color: Color(0xFF24242E),
                  child: Row(children: [
                    IconButton(
                        onPressed: () {},
                        icon: Icon(FontAwesomeIcons.linkedin)),
                    IconButton(
                        onPressed: () {}, icon: Icon(FontAwesomeIcons.twitter)),
                    IconButton(
                        onPressed: () async {},
                        icon: Icon(FontAwesomeIcons.github)),
                  ]),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
