import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gojeg/ui/home/widgets/horizontalItems.dart';
import 'package:gojeg/ui/home/widgets/horizontalItemsTitle.dart';
import 'package:gojeg/ui/home/widgets/searchBar.dart';
import 'package:gojeg/ui/home/widgets/banner.dart';
import 'package:gojeg/ui/profile/profile.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: SearchBar(),
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          Container(
            margin: EdgeInsets.only(right: 17),
            child: InkWell(
              onTap: () async {
                bool focus = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return ProfilePage();
                    },
                  ),
                );
                if (focus == true || focus == null) {
                  // FocusScope.of(context).requestFocus(SearchBar.fn);
                }
              },
              child: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Colors.green.shade600,
                radius: 20,
              ),
            ),
          )
        ],
      ),
      body: ListView(
        children: [
          BannerBalance(),
          HorizontalItemsTitle(
            category: 'Promos Just For You',
            description: 'Stay at home and enjoy the promos',
          ),
          HorizontalItems(),
          HorizontalItemsTitle(
            category: 'Promos Just For You',
            description: 'Stay at home and enjoy the promos',
          ),
          HorizontalItems(),
          HorizontalItemsTitle(
            category: 'Promos Just For You',
            description: 'Stay at home and enjoy the promos',
          ),
          HorizontalItems(),
        ],
      ),
    );
  }
}
