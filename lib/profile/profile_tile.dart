import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/const.dart';

import '../assessment_services.dart';
import '../insta_tile.dart';




class ProfileTile extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween,

             children: [
               CircleAvatar(
                 backgroundImage: AssetImage(profileImage),
                 radius: 50,
               ),
               FollowerDetail(nametext: 'Posts', numbertext: '36', ),
               FollowerDetail(nametext: 'Followers', numbertext: '307', ),
               FollowerDetail(nametext: 'Following', numbertext: '448', ),

             ],
           ),
            SizedBox(height: 10,),

            Text("Profile Name",style: TextStyle(
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 5,),
            Text("About \nxxxxxxxx \nxxxxxxxx \nxxxxxxx"),
            SizedBox(height: 10,),
            RaisedButton(onPressed: (){},
            child: Text("Edit Profile",style: TextStyle(
                fontWeight: FontWeight.bold
            ),),
              color: Color(0xfff8faf8),
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius. circular(5),
              side: BorderSide(color: Colors.grey,)
              ),
            ),
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

          ],
        ),
      ),
    );
  }
}

class FollowerDetail extends StatelessWidget {
final String numbertext;
final String nametext;

FollowerDetail({this.numbertext,this.nametext});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(numbertext,style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 18
        ), ),
        SizedBox(height: 5,),
        Text((nametext)),
      ],
    );
  }
}
