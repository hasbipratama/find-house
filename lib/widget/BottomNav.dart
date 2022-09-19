import 'package:flutter/material.dart';
import 'package:find_house/model/BottomNav_Model.dart';

class BottomNavigation extends StatelessWidget {
  @override
  BottomNav Nav;

  BottomNavigation({required this.Nav});

  Widget build(BuildContext context) {
    return Column(
      children: [
        Spacer(),
        Image.asset(
          Nav.imageurl,
          width: 26,
        ),
        Spacer(),
        Nav.isactive
            ? Container(
                width: 30,
                height: 4,
                decoration: BoxDecoration(
                  color: Color(0xff7F74EB),
                  borderRadius: BorderRadius.circular(1000),
                ),
              )
            : Container(),
      ],
    );
  }
}
