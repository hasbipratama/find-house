import 'package:flutter/material.dart';
import 'package:find_house/theme/home.dart';
import 'package:find_house/model/Guidance_Model.dart';

class Guidance extends StatelessWidget {
  @override
  Guidance_model guid;

  Guidance({required this.guid});

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        right: 20,
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: Image.asset(
              guid.imageurl,
              width: 80,
              height: 80,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                guid.nameguid,
                style: CityGuidelines,
              ),
              Text(
                guid.dateguid,
                style: CityRecomendSpace,
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.chevron_right_rounded,
              size: 24,
              color: Color(
                0xffC9C9C9,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
