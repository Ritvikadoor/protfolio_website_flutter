import 'package:flutter/material.dart';
import 'package:ritvik_p_pramod/modules/constants/constants.dart';
import 'package:ritvik_p_pramod/modules/widgets/side_menu.dart';
import 'package:ritvik_p_pramod/responsive/responsive.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);
  final List<Widget> children;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
              backgroundColor: bgColor,
              leading: Builder(
                builder: (context) => IconButton(
                    onPressed: () {
                      Scaffold.of(context).openDrawer();
                    },
                    icon: Icon(Icons.menu)),
              )),
      drawer: SideMenu(),
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (Responsive.isDesktop(context))
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
