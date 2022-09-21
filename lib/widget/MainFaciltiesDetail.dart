import 'package:flutter/material.dart';
import 'package:find_house/pages/Details.dart';
import 'package:find_house/model/MainFacilitiesDetail_Model.dart';

class MainFacilitiesDetail extends StatelessWidget {
  MainFaicilitiesDetailModel mainFaicilitiesModel;

  MainFacilitiesDetail({
    required this.mainFaicilitiesModel,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              mainFaicilitiesModel.ImageUrl,
              width: 32,
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              children: [
                Text(
                  mainFaicilitiesModel.Amount,
                  style: TextStyle(
                    color: Color(0xff5843BE),
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(
                  width: 3,
                ),
                Text(
                  mainFaicilitiesModel.Name,
                )
              ],
            ),
          ],
        ),
      ],
    );
  }
}
