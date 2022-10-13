import 'package:find_house/pages/Details.dart';
import 'package:flutter/material.dart';
import 'package:find_house/model/Photos_model.dart';
import 'package:flutter/rendering.dart';

class Photos extends StatelessWidget {
  @override
  PhotosModel photos;

  Photos({required this.photos});

  Widget build(BuildContext context) {
    return Row(
      children: photos.ImageUrl.map((item) {
        return ClipRRect(
          borderRadius: BorderRadius.circular(30),
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(17)),
            margin: EdgeInsets.only(left: 24),
            child: Image.network(
              item,
              height: 110,
              width: 110,
            ),
          ),
        );
      }).toList(),
    );
  }
}
