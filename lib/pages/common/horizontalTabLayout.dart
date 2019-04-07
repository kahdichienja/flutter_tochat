import 'package:flutter/material.dart';
import 'package:testapp/models/forum.dart';
import 'package:testapp/pages/common/forumCard.dart';
import 'package:testapp/pages/common/tabText.dart';

class HorizontalTabLayout extends StatefulWidget {
  _HorizontalTabLayoutState createState() => _HorizontalTabLayoutState();
}

class _HorizontalTabLayoutState extends State<HorizontalTabLayout> {
  int selectedTabIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      // width: 370.0,
      child: Stack(
        children: <Widget>[
          Positioned(
            // from left margin of the phone screen
            left: -5.0,
            bottom: 0,
            top: 0,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 50.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  TabText(
                    text: "Camera",
                    isSelected: selectedTabIndex == 0,
                    onTabTap: (){
                      onTabTap(0);
                    },
                  ),
                  TabText(
                    text: "Chats",
                    isSelected: selectedTabIndex == 1,
                    onTabTap: (){
                      onTabTap(1);
                    },
                  ),
                  TabText(
                    text: "Status",
                    isSelected: selectedTabIndex == 2,
                    onTabTap: (){
                      onTabTap(2);
                    },
                  ),
                  TabText(
                    text: "Contacts",
                    isSelected: selectedTabIndex == 3,
                    onTabTap: (){
                      onTabTap(3);
                    },
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60.0),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                ForumCard(forum: fortniteForum),
                ForumCard(forum: pubgForum),
              ],
            ),
          )
        ],
      ),
    );
  }
  onTabTap(int index){
    setState(() {
     selectedTabIndex = index; 
    });
  }
}
