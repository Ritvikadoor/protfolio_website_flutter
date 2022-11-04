import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/widgets/side_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(flex: 2, child: SideMenu()),
            Expanded(
              flex: 7,
              child: SingleChildScrollView(
                child: Column(
                  children: [...children],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
