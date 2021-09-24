import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/assessments_controller.dart';
import 'package:flutter_insta_clone_app/base_model.dart';
import 'package:flutter_insta_clone_app/const.dart';
import 'package:get/get.dart';

class ReusableCard extends StatelessWidget {
  AssessmentController assessmentController = Get.find<AssessmentController>();

  Welcome welcome;

  ReusableCard({this.welcome});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                CircleAvatar(
                    backgroundColor: Colors.transparent,
                    child: Image.network(
                      welcome.imageLink,
                    )),
                SizedBox(
                  width: 5,
                ),
                Text(
                  welcome.productType,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ],
            ),
            Icon(Icons.more_vert)
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          width: double.infinity,
          color: Colors.grey,
            height: 400,
            child: assessmentController.isLoading.value
                ? Center(child: CircularProgressIndicator())
                : Image.network(welcome.imageLink)),
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                SizedBox(
                  width: 10,
                ),
                Icon(
                  Icons.favorite_border,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.mode_comment_outlined,
                  size: 30,
                ),
                SizedBox(
                  width: 20,
                ),
                Icon(
                  Icons.send,
                  size: 30,
                ),
              ],
            ),
            Icon(
              Icons.save_alt,
              size: 30,
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
