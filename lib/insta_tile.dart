import 'package:flutter_insta_clone_app/base_model.dart';
import 'package:flutter_insta_clone_app/const.dart';
import 'package:flutter_insta_clone_app/reusable_card.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';


class InstaTile extends StatelessWidget {
  Welcome welcome;
  InstaTile({this.welcome});

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,

        child: Column(
          children: [

            SingleChildScrollView(
              scrollDirection: Axis.horizontal,


              child: Container(
                color: Colors.white,
                child: Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(2.0),
                            child: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.blueGrey,

                              child: CircleAvatar(


                                 backgroundImage: NetworkImage(welcome.imageLink),
                                radius: 28,

                              ),
                            ),
                          ),
                          SizedBox(height: 10,),

                          Text(welcome.price,
                          style: TextStyle(
                            fontSize: 10
                          ),),
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),


          ],
        ),


    );
  }
}
