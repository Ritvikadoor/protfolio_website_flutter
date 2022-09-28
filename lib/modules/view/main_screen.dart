import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: [
            const Expanded(flex: 2, child: SideMenu()),
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
