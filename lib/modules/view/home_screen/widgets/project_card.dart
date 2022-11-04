import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/constants/projects.dart';
import 'package:ritvik_p_pramod/responsive/responsive.dart';

class ProjectCard extends StatelessWidget {
  const ProjectCard({Key? key, required this.project}) : super(key: key);
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultPadding),
      color: secondaryColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              project.title!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: defaultPadding,
            ),
            Text(
              project.description!,
              maxLines: Responsive.isMobileLarge(context) ? 2 : 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(height: 1.5),
            ),
            Expanded(
              child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Read More>>",
                    style: TextStyle(color: primaryColor),
                  )),
            ),
          ]),
    );
  }
}
