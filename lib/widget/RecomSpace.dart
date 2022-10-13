import 'package:find_house/model/Photos_model.dart';
import 'package:find_house/widget/Photos.dart';
import 'package:flutter/material.dart';
import 'package:find_house/theme/home.dart';
import 'package:find_house/model/RecomSpace_Model.dart';
import 'package:find_house/pages/Details.dart';
import 'package:find_house/model/Details_Model.dart';

class RecomSpace extends StatefulWidget {
  @override
  Space space;

  RecomSpace(Space item, {required this.space});

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
                  price: '\$${widget.space.pricespace}',
                  numberofkitchen: widget.space.numberofkitchen,
                  numberofbedroom: widget.space.numberofbedroom,
                  numberofcupboard: widget.space.numberofcupboard,
                  address: widget.space.address,
                  city: widget.space.city,
                ),
                detailphoto: PhotosModel(ImageUrl: widget.space.photos),
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
                    Image.network(
                      widget.space.imageurl,
                      width: 130,
                      height: 110,
                      fit: BoxFit.cover,
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
                                '\ ${widget.space.rating}/5',
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
                      '\$${widget.space.pricespace}',
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
                Row(
                  children: [
                    Text(
                      widget.space.city,
                      style: CityRecomendSpace,
                    ),
                    SizedBox(
                      width: 2,
                    ),
                    Text(
                      widget.space.country,
                      style: CityRecomendSpace,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
