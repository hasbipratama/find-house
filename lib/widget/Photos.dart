import 'package:find_house/pages/Details.dart';
import 'package:flutter/material.dart';
import 'package:find_house/model/Photos_model.dart';
import 'package:flutter/rendering.dart';

class Photos extends StatelessWidget {
  @override
  PhotosModel photos;

  Photos({required this.photos});

  int index = 0;

  Widget build(BuildContext context) {
    return Row(
      children: photos.ImageUrl.map((item) {
        index++;
        return Container(
          margin: EdgeInsets.only(
            left: index == 1 ? 0 : 24,
          ),
          height: 88,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(16),
            child: Image.network(
              item,
              height: 88,
              width: 110,
              fit: BoxFit.cover,
            ),
          ),
        );
      }).toList(),
    );
  }
}
