import 'package:flutter/material.dart';
import 'package:find_house/theme/home.dart';
import 'package:find_house/model/CardCity_Model.dart';
import 'package:find_house/pages/Error.dart';

class CardCity extends StatefulWidget {
  @override
  City city;

  CardCity({required this.city});

  @override
  State<CardCity> createState() => _CardCityState();
}

class _CardCityState extends State<CardCity> {
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 20),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(18),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ErrorPage(),
              ),
            );
          },
          child: Container(
            width: 120,
            height: 150,
            decoration: BoxDecoration(
              color: Color(0xffF6F7F8),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Image.asset(widget.city.imageurl),
                    widget.city.ispopuler
                        ? Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xff5843BE),
                                borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(36),
                                ),
                              ),
                              width: 50,
                              height: 30,
                              child: Center(
                                child: Image.asset(
                                  'assets/staricon.png',
                                  width: 22,
                                  height: 22,
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(
                  height: 11,
                ),
                Text(
                  widget.city.name,
                  style: CityCard,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
