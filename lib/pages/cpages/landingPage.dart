import 'package:flutter/material.dart';
import 'package:testapp/pages/common/appBackground.dart';
import 'package:testapp/pages/common/horizontalTabLayout.dart';
import 'package:testapp/styleguide/colors.dart';


class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: thirdCircleColor),
        title: new Text('ToChat.'),
        elevation: 12.0,
        backgroundColor: firstCircleColor,
      ),
      body: Stack(
        children: <Widget>[
          AppBackground(),
          Center(
            child: HorizontalTabLayout(),
          )
        ],
      ),
    );
  }
}
