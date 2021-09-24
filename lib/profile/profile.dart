import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/profile/profile_tile.dart';
import 'package:flutter_insta_clone_app/profile/tab_bar_viewww/photos.dart';
import 'package:flutter_insta_clone_app/profile/tab_bar_viewww/tagged_photos.dart';
import 'package:flutter_insta_clone_app/profile/tab_bar_viewww/videosss.dart';


class ProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("Profile Name "),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined)),

          IconButton(onPressed: (){}, icon: Icon(Icons.menu)),

        ],
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, value) {
            return [
              SliverAppBar(
                floating: true,
                backgroundColor: Colors.white,
                pinned: true,
                bottom: TabBar(

                  tabs: [

                    Tab(icon: Icon(Icons.grid_4x4_rounded),),
                    Tab(icon: Icon(Icons.video_collection),),
                    Tab(icon: Icon(Icons.people),),
                  ],
                ),
                automaticallyImplyLeading: false,
                expandedHeight: 400,
                flexibleSpace: FlexibleSpaceBar(

                  collapseMode: CollapseMode.pin,
                  background: ProfileTile(), // This is where you build the profile part
                ),
              ),
            ];
          },
          body: TabBarView(
            children: [
             PhotosTab(),
              VideosTab(),
              TaggedPhotosTab()
            ],
          ),
        ),
      ),
    );
  }
}
