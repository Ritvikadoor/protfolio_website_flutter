import 'package:flutter/material.dart';

import '../constants/constants.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: defaultPadding),
          child: Text(
            "Knowledges",
            style: Theme.of(context).textTheme.subtitle2,
          ),
        ),
        const KnowledgeText(text: "Flutter, Dart"),
        const KnowledgeText(text: "Stylus, Sass, Less"),
        const KnowledgeText(text: "Gulp, Webpack, Grunt"),
        const KnowledgeText(text: "GIT Knowledge"),
      ],
    );
  }
}

class KnowledgeText extends StatelessWidget {
  const KnowledgeText({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: defaultPadding / 2),
      child: Row(
        children: [
          const SizedBox(width: defaultPadding / 2),
          Text(text),
        ],
      ),
    );
  }
}
