import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class LoginView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
              flex: 4,
              child: Container(
                  color: context.randomColor,
                  child: Column(
                    children: [
                      Expanded(child: FlutterLogo()),
                      Container(
                        child: TabBar(tabs: [
                          Tab(icon: Icon(Icons.radio)),
                          Tab(icon: Icon(Icons.radio)),
                        ]),
                      )
                    ],
                  )),
            ),
            Expanded(flex: 6, child: Container(color: context.randomColor)),
          ],
        ),
      ),
    );
  }
}
