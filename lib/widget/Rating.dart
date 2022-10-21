import 'package:flutter/material.dart';
import 'package:find_house/model/Details_Model.dart';

class Rating extends StatelessWidget {
  @override
  int index;
  int ratingitem;

  Rating({
    this.index = 0,
    this.ratingitem = 0,
  });

  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        index <= ratingitem ? 'assets/star.png' : 'assets/nostar.png',
        width: 20,
      ),
    );
  }
}
