import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/base_model.dart';
import 'package:flutter_insta_clone_app/reusable_card.dart';
import 'package:flutter_insta_clone_app/insta_tile.dart';
import 'package:flutter_insta_clone_app/profile/profile.dart';
import 'package:get/get.dart';
import 'activity/activity_screen.dart';
import 'assessments_controller.dart';

class HomePage extends StatelessWidget {
  AssessmentController assessmentController = Get.put(AssessmentController());

  static const TextStyle optionStyle =
  TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Business',
      style: optionStyle,
    ),
    Text(
      'Index 2: School',
      style: optionStyle,
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Instagram Xtra Lite Pro Max",style: TextStyle(
          color: CupertinoColors.black
        ),

        ),
        // backgroundColor: Colors.white,

        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.add_box_outlined)),

          IconButton(onPressed: (){}, icon: Icon(Icons.message)),
        ],

      ),

      //
      // bottomNavigationBar:  Container(
      //   height: 60,
      //   color: Colors.white,
      //   alignment: Alignment.topCenter,
      //   child: BottomAppBar(
      //
      //
      //     elevation: 0,
      //     child: Row(
      //       mainAxisAlignment: MainAxisAlignment.spaceAround,
      //       children: [
      //
      //         IconButton(onPressed: (){}, icon: Icon(Icons.home,size: 30,)),
      //         IconButton(onPressed: (){}, icon: Icon(Icons.search,size: 30,)),
      //         IconButton(onPressed: (){}, icon: Icon(Icons.video_collection,size: 30,)),
      //         IconButton(onPressed: (){
      //
      //           Get.to(ActivityScreen());
      //         }, icon: Icon(Icons.favorite_border,size: 30,)),
      //         IconButton(onPressed: (){
      //           Get.to(ProfileScreen(),
      //           );
      //         }, icon: Icon(Icons.person,size: 30,)),
      //       ],
      //     ),
      //   ),
      // ),
      body:
           Obx(() =>
             SingleChildScrollView(
               child: Container(
                 child: Column(
                   children: [
                     Container(
                       height: 100,
                       child: ListView.builder(
                           itemCount: assessmentController.listData.length,
                           shrinkWrap: true,
                           scrollDirection: Axis.horizontal,
                           itemBuilder: (context, index) {
                             return InstaTile(welcome: assessmentController.listData[index]);

                           }),
                     ),
                     // SizedBox(height: 10,),
                     Container(

                       child: ListView.builder(
                         shrinkWrap: true,
                         physics: ClampingScrollPhysics(),
                         itemCount: assessmentController.listData.length,
                         itemBuilder: (context, index) {
                           return ReusableCard(
                               welcome: assessmentController.listData[index]
                           );
                         },
                       ),
                     )
                   ],
                 ),
               ),
             ),




      //       ),
      //     ],
      //   ),
      //
      //
      ),
    );
  }
}
