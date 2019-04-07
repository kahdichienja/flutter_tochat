import 'package:flutter/material.dart';
import 'package:testapp/models/forum.dart';
import 'package:testapp/pages/common/forumNameWidget.dart';

class ForumCard extends StatelessWidget {
  final forum;
  ForumCard({this.forum});
  @override
  Widget build(BuildContext context) {
    return new SizedBox(
      width: 280.0,
      child: new Card(
        margin: EdgeInsets.symmetric(horizontal: 25.0, vertical: 20.0),
        elevation: 20.0,
        shape: RoundedRectangleBorder(
            borderRadius: new BorderRadius.all(Radius.circular(20.0))),
        child: ClipRRect(
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          child: new Stack(
            children: <Widget>[
              Image.asset(
                forum.imagePath,
                // width: 280.0,
                fit: BoxFit.fitWidth,
              ),
              Positioned(
                left: 1.0,
                bottom: 78.0,
                child: ForumNameWidget(forum),
              ),
              
            ],
          ),
        ),
      ),
    );
  }
}
