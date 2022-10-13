import 'package:find_house/model/MainFacilitiesDetail_Model.dart';
import 'package:find_house/model/Photos_model.dart';
import 'package:find_house/pages/Home.dart';
import 'package:find_house/theme/home.dart';
import 'package:find_house/widget/Photos.dart';
import 'package:flutter/material.dart';
import 'package:find_house/model/Details_Model.dart';
import 'package:find_house/theme/details.dart';
import 'package:find_house/theme/splash.dart';
import 'package:find_house/widget/MainFaciltiesDetail.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:find_house/pages/Error.dart';
import 'package:find_house/model/Photos_model.dart';

class Details extends StatefulWidget {
  @override
// Model

  details_model details;
  PhotosModel detailphoto;

  Details({
    required this.details,
    required this.detailphoto,
  });

  @override
  State<Details> createState() => _DetailsState();
}

bool IsApplied = false;

class _DetailsState extends State<Details> {
  Widget build(BuildContext context) {
    // URL Launcher
    // ignore: unused_element
    launchUrl(String url) async {
      // ignore: deprecated_member_use
      if (await canLaunch(url)) {
        // ignore: deprecated_member_use
        launch(url);
      } else {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ErrorPage(),
          ),
        );
      }
    }

    Widget Btnnopress() {
      return InkWell(
        onTap: () {
          setState(() {
            IsApplied = !IsApplied;
          });
        },
        child: Container(
          width: 40,
          height: 40,
          child: Image.asset(
            'assets/btnlove.png',
            width: 40,
            height: 40,
          ),
        ),
      );
    }

    Widget Btnpress() {
      return InkWell(
        onTap: () {
          setState(() {
            IsApplied = !IsApplied;
          });
        },
        child: Container(
          width: 40,
          height: 40,
          child: Image.asset(
            'assets/btnpress.png',
            width: 40,
            height: 40,
          ),
        ),
      );
    }

    Widget Header() {
      return Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(28),
            child: Image.network(
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
                  IsApplied ? Btnpress() : Btnnopress(),
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
                MainFacilitiesDetail(
                  mainFaicilitiesModel: MainFaicilitiesDetailModel(
                      ImageUrl: 'assets/baricon.png',
                      Amount: '${widget.details.numberofkitchen}',
                      Name: 'Kitchen'),
                ),
                Spacer(),
                MainFacilitiesDetail(
                  mainFaicilitiesModel: MainFaicilitiesDetailModel(
                    ImageUrl: 'assets/badroomicon.png',
                    Amount: '${widget.details.numberofbedroom}',
                    Name: 'Badroom',
                  ),
                ),
                Spacer(),
                MainFacilitiesDetail(
                  mainFaicilitiesModel: MainFaicilitiesDetailModel(
                    ImageUrl: 'assets/cupboardicon.png',
                    Amount: '${widget.details.numberofcupboard}',
                    Name: 'Big Lemari',
                  ),
                ),
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
                      Photos(
                        photos: PhotosModel(
                          ImageUrl: widget.detailphoto.ImageUrl,
                        ),
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
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.details.address,
                              style: AddressDetail,
                            ),
                            Text(
                              widget.details.city,
                              style: AddressDetail,
                            ),
                          ],
                        ),
                        InkWell(
                          onTap: () {
                            launchUrl(
                              "https://www.google.com/maps/place/Batam+'s+Office/@1.1277689,104.0547514,18.77z/data=!4m12!1m6!3m5!1s0x31d9891f5db106f7:0xc99e0a348e673c11!2sAnta+Sari+Semesta.+PT!8m2!3d1.1234601!4d104.0239506!3m4!1s0x31d988e2eb4e0e05:0x5ddd08a64d2d6a23!8m2!3d1.1276777!4d104.0554723",
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
                launchUrl('tel:+6282317723160');
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
