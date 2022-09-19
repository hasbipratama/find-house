import 'package:find_house/pages/Calling.dart';
import 'package:find_house/pages/Home.dart';
import 'package:find_house/theme/home.dart';
import 'package:flutter/material.dart';
import 'package:find_house/model/Details_Model.dart';
import 'package:find_house/theme/details.dart';
import 'package:find_house/theme/splash.dart';
import 'package:find_house/pages/Map.dart';

class Details extends StatefulWidget {
  @override
  details_model details;

  Details({required this.details});

  @override
  State<Details> createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  Widget build(BuildContext context) {
    Widget Header() {
      return Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Image.asset(
              widget.details.imagedetails,
            ),
          ),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 25, right: 25),
              child: Row(
                children: [
                  Column(
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Home(),
                            ),
                          );
                        },
                        child: Image.asset(
                          'assets/backbtn.png',
                          width: 40,
                          height: 40,
                        ),
                      ),
                    ],
                  ),
                  Spacer(),
                  InkWell(
                    onTap: () {},
                    child: Image.asset(
                      'assets/btnlove.png',
                      width: 40,
                      height: 40,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      );
    }

    Widget Main() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 25,
          right: 25,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.details.spacename,
                      style: NameRecomendSpace,
                    ),
                    Row(
                      children: [
                        Text(
                          widget.details.price,
                          style: PriceRecomendSpace,
                        ),
                        Text(
                          ' /month',
                          style: MonthRecomendSpace,
                        ),
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Image.asset(
                  'assets/rate.png',
                  width: 108,
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Main Facilities',
              style: TitleCard,
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/baricon.png',
                      width: 32,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          '2',
                          style: TextStyle(
                            color: Color(0xff5843BE),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          ' Kitchen',
                        )
                      ],
                    ),
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/badroomicon.png',
                      width: 32,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          '3',
                          style: TextStyle(
                            color: Color(0xff5843BE),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          ' Bedroom',
                        ),
                      ],
                    )
                  ],
                ),
                Spacer(),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      'assets/cupboardicon.png',
                      width: 32,
                    ),
                    SizedBox(
                      height: 8,
                    ),
                    Row(
                      children: [
                        Text(
                          '3',
                          style: TextStyle(
                            color: Color(0xff5843BE),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          ' Big Lemari',
                        )
                      ],
                    ),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Photos',
                  style: TitleCard,
                ),
                SizedBox(
                  height: 12,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/picdetails1.png',
                        width: 110,
                        height: 88,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/picdetails2.png',
                        width: 110,
                        height: 88,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/picdetails3.png',
                        width: 110,
                        height: 88,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/picdetails4.png',
                        width: 110,
                        height: 88,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Image.asset(
                        'assets/picdetails5.png',
                        width: 110,
                        height: 88,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TitleCard,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Jln. Kappan Sukses No.20 \n Palembang',
                          style: AddressDetail,
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => MapPage(),
                              ),
                            );
                          },
                          child: Image.asset(
                            'assets/btnloc.png',
                            width: 40,
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      );
    }

    Widget Footer() {
      return Padding(
        padding: const EdgeInsets.only(bottom: 50),
        child: Center(
          child: Container(
            width: 327,
            height: 50,
            child: TextButton(
              style: TextButton.styleFrom(
                backgroundColor: Color(0xff5843BE),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(17),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Calling(),
                  ),
                );
              },
              child: Text(
                'Book Now',
                style: Button,
              ),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Header(),
            SizedBox(
              height: 30,
            ),
            Main(),
            SizedBox(
              height: 40,
            ),
            Footer(),
          ],
        ),
      ),
    );
  }
}
