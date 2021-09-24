import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/profile/profile_tile.dart';


class ActivityScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                floating: true,
                pinned: true,
                bottom: TabBar(
                  tabs: [
                    Tab(text: "Posts"),
                    Tab(text: "Likes"),
                  ],
                ),
                expandedHeight: 450,
                flexibleSpace: FlexibleSpaceBar(
                  collapseMode: CollapseMode.pin,
                  background: ProfileTile(), // This is where you build the profile part
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
              Container(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 40,
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index % 9)],
                      child: Text('List Item $index'),
                    );
                  },
                ),
              ),
              Container(
                child: ListView.builder(
                  itemCount: 100,
                  itemBuilder: (context, index) {
                    return Container(
                      height: 40,
                      alignment: Alignment.center,
                      color: Colors.lightBlue[100 * (index % 9)],
                      child: Text('List Item $index'),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
