import 'package:flutter/material.dart';
import 'package:find_house/model/Photos_model.dart';

class Photos extends StatelessWidget {
  @override
  PhotosModel photos;

  Photos({required this.photos});

  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return Column(
      children: [
        Container(
          width: 110,
          height: 88,
          child: Image.asset(
            photos.ImageUrl,
          ),
        ),
      ],
    );
  }
}
