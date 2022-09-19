import 'package:flutter/material.dart';
import 'package:find_house/theme/home.dart';
import 'package:find_house/model/RecomSpace_Model.dart';
import 'package:find_house/pages/Details.dart';
import 'package:find_house/model/Details_Model.dart';

class RecomSpace extends StatefulWidget {
  @override
  Space space;

  RecomSpace({required this.space});

  @override
  State<RecomSpace> createState() => _RecomSpaceState();
}

class _RecomSpaceState extends State<RecomSpace> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30),
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => Details(
                details: details_model(
                  imagedetails: widget.space.imageurl,
                  spacename: widget.space.namespace,
                  price: widget.space.pricespace,
                ),
              ),
            ),
          );
        },
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(18),
              child: Container(
                width: 130,
                height: 110,
                child: Stack(
                  children: [
                    Image.asset(
                      widget.space.imageurl,
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0xff5843BE),
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(36),
                          ),
                        ),
                        width: 70,
                        height: 30,
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/staricon.png',
                                width: 22,
                                height: 22,
                              ),
                              Text(
                                widget.space.rating,
                                style: RateRecomendSpace,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.space.namespace,
                  style: NameRecomendSpace,
                ),
                SizedBox(
                  height: 2,
                ),
                Row(
                  children: [
                    Text(
                      widget.space.pricespace,
                      style: PriceRecomendSpace,
                    ),
                    Text(
                      ' month',
                      style: MonthRecomendSpace,
                    ),
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  widget.space.locationspace,
                  style: CityRecomendSpace,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
