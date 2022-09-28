import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: Colors.black,
        child: Column(
          children: [
            Spacer(
              flex: 2,
            ),
            const CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.yellow,
                backgroundImage: AssetImage('images/img_my_pic.jpg')),
            Spacer(),
            Text(
              'RItvik Adoor',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
