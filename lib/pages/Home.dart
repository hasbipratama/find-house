import 'package:find_house/Provider/Space_Provider.dart';
import 'package:find_house/model/CardCity_Model.dart';
import 'package:find_house/model/Guidance_Model.dart';
import 'package:find_house/model/RecomSpace_Model.dart';
import 'package:find_house/model/BottomNav_Model.dart';
import 'package:find_house/widget/BottomNav.dart';
import 'package:find_house/widget/CardCity.dart';
import 'package:find_house/widget/Guidance.dart';
import 'package:find_house/widget/RecomSpace.dart';
import 'package:flutter/material.dart';
import 'package:find_house/theme/home.dart';
import 'package:find_house/theme/splash.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    Widget Header() {
      return Padding(
        padding: const EdgeInsets.only(left: 25, top: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Explore Now',
              style: TittleSplash,
            ),
            Text(
              'Mencari kosan yang cozy',
              style: SubTittleSplash,
            )
          ],
        ),
      );
    }

    Widget Main() {
      return Padding(
        padding: const EdgeInsets.only(
          left: 25,
          bottom: 90,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Popular Cities',
              style: TitleCard,
            ),
            SizedBox(
              height: 16,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardCity(
                    city: City(
                      id: 1,
                      name: 'Jakarta',
                      imageurl: 'assets/cardcity1.png',
                    ),
                  ),
                  CardCity(
                    city: City(
                      id: 1,
                      name: 'Bandung',
                      imageurl: 'assets/cardcity2.png',
                      ispopuler: true,
                    ),
                  ),
                  CardCity(
                    city: City(
                      id: 1,
                      name: 'Surabaya',
                      imageurl: 'assets/cardcity3.png',
                    ),
                  ),
                  CardCity(
                    city: City(
                      id: 1,
                      name: 'Palembang',
                      imageurl: 'assets/cardcity4.png',
                    ),
                  ),
                  CardCity(
                    city: City(
                      id: 1,
                      name: 'Aceh',
                      imageurl: 'assets/cardcity5.png',
                      ispopuler: true,
                    ),
                  ),
                  CardCity(
                    city: City(
                      id: 1,
                      name: 'Bogor',
                      imageurl: 'assets/cardcity6.png',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Text(
              'Recommended Space',
              style: TitleCard,
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              child: FutureBuilder(
                future: spaceProvider.GetRecommendedSpace(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    var data = (snapshot.data as List<Space>);
                    return Column(
                        children: data
                            .map((item) => RecomSpace(
                                  item,
                                  space: item,
                                ))
                            .toList());
                  }
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                },
              ),
            ),
            Text(
              'Tips & Guidance',
              style: TitleCard,
            ),
            SizedBox(
              height: 16,
            ),
            Column(
              children: [
                Guidance(
                  guid: Guidance_model(
                    id: 1,
                    imageurl: 'assets/picguidline1.png',
                    nameguid: 'City Guidelines',
                    dateguid: 'Updated 20 Apr',
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Guidance(
                  guid: Guidance_model(
                    id: 1,
                    imageurl: 'assets/picguidline2.png',
                    nameguid: 'Jakarta Fairship',
                    dateguid: 'Updated 11 Dec',
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    }

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Header(),
              SizedBox(
                height: 30,
              ),
              Main(),
            ],
          ),
        ),
      ),
      floatingActionButton: Container(
        margin: EdgeInsets.symmetric(horizontal: 18),
        width: 327,
        height: 65,
        decoration: BoxDecoration(
          color: Color(0xffF4F5F5),
          borderRadius: BorderRadius.circular(23),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            BottomNavigation(
              Nav: BottomNav(
                imageurl: 'assets/iconnav1.png',
              ),
            ),
            BottomNavigation(
              Nav: BottomNav(
                imageurl: 'assets/iconnav2.png',
                isactive: true,
              ),
            ),
            BottomNavigation(
              Nav: BottomNav(
                imageurl: 'assets/iconnav3.png',
              ),
            ),
            BottomNavigation(
              Nav: BottomNav(
                imageurl: 'assets/iconnav4.png',
              ),
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
