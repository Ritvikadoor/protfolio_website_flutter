import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/constants.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            Expanded(
                flex: 2,
                child: Drawer(
                  child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.23,
                        child: Container(
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                )),
            Expanded(
                flex: 7,
                child: Container(
                  color: Colors.blue,
                ))
          ],
        ),
      ),
    );
  }
}
