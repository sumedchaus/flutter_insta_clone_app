import 'package:flutter/material.dart';
import 'package:flutter_insta_clone_app/assessments_controller.dart';
import 'package:flutter_insta_clone_app/const.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_grid_view.dart';
import 'package:get/get.dart';
import 'package:staggered_grid_view_flutter/widgets/staggered_tile.dart';

import '../../base_model.dart';

class PhotosTab extends StatelessWidget {
  AssessmentController assessmentController = Get.find<AssessmentController>();

  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.countBuilder(
      crossAxisCount: 3,
      itemCount: assessmentController.listData.length,
      // mainAxisSpacing: 15,
      // crossAxisSpacing: 15,
      itemBuilder: (context, index) {
        return ProductTile( assessmentController.listData[index]);
      },
      staggeredTileBuilder: (index) => StaggeredTile.fit(1),
    );
  }
}

class ProductTile extends StatelessWidget {

  final Welcome product;
  const ProductTile(this.product);



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(1.0),
      child: Container(
        color: Colors.blue[200],

        child: Image.network(
          product.imageLink,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
