import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/view/home_screen/widgets/project_card.dart';
import 'package:ritvik_p_pramod/modules/constants/projects.dart';
import 'package:ritvik_p_pramod/responsive/responsive.dart';

class MyProjects extends StatelessWidget {
  const MyProjects({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "My Projects",
            style: TextStyle(
                color: primaryColor, fontWeight: FontWeight.bold, fontSize: 20),
          ),
          const Responsive(
            mobile: ProjectGridView(
              crossAxisCount: 1,
              childAspectRatio: 1.5,
            ),
            desktop: ProjectGridView(),
            tablet: ProjectGridView(
              crossAxisCount: 2,
              childAspectRatio: 2,
            ),
            mobileLarge: ProjectGridView(
              crossAxisCount: 1,
            ),
          )
        ],
      ),
    );
  }
}

class ProjectGridView extends StatelessWidget {
  const ProjectGridView({
    Key? key,
    this.crossAxisCount = 3,
    this.childAspectRatio = 2,
  }) : super(key: key);
  final int crossAxisCount;
  final double childAspectRatio;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      itemCount: demo_projects.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxisCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: defaultPadding,
          mainAxisSpacing: defaultPadding),
      itemBuilder: (context, index) => ProjectCard(
        project: demo_projects[index],
      ),
    );
  }
}
