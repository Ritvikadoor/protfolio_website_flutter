import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/project_card.dart';
import 'package:ritvik_p_pramod/modules/constants/projects.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "My Projects",
          style: Theme.of(context).textTheme.headline6,
        ),
        GridView.builder(
          shrinkWrap: true,
          itemCount: demo_projects.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1.3,
              crossAxisSpacing: defaultPadding,
              mainAxisSpacing: defaultPadding),
          itemBuilder: (context, index) => ProjectCard(
            project: demo_projects[index],
          ),
        )
      ],
    );
  }
}
