import 'package:find_house/Provider/Space_Provider.dart';
import 'package:find_house/model/CardCity_Model.dart';
import 'package:find_house/model/Guidance_Model.dart';
import 'package:find_house/model/RecomSpace_Model.dart';
import 'package:find_house/model/BottomNav_Model.dart';
import 'package:find_house/pages/Details.dart';
import 'package:find_house/widget/BottomNav.dart';
import 'package:find_house/widget/CardCity.dart';
import 'package:find_house/widget/Guidance.dart';
import 'package:find_house/widget/RecomSpace.dart';
import 'package:flutter/material.dart';
import 'package:find_house/theme/home.dart';
import 'package:find_house/theme/splash.dart';
import 'package:provider/provider.dart';
import 'package:find_house/Provider/Space_Provider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var spaceProvider = Provider.of<SpaceProvider>(context);

    print(spaceProvider.GetRecommendedSpace());

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
            Column(
              children: [
                RecomSpace(
                  space: Space(
                    id: 1,
                    imageurl: 'assets/picrecom1.png',
                    namespace: 'Kuretakeso Hott',
                    pricespace: '\$52',
                    city: 'Bandung',
                    country: 'Indonesia',
                    rating: '4/5',
                    address: 'Jln. Kappan Sukses No. 20 \n Palembang',
                    phone: 'tel:+6282317723160',
                    mapurl:
                        "https://www.google.com/maps/place/Batam+'s+Office/@1.1277689,104.0547514,18.77z/data=!4m12!1m6!3m5!1s0x31d9891f5db106f7:0xc99e0a348e673c11!2sAnta+Sari+Semesta.+PT!8m2!3d1.1234601!4d104.0239506!3m4!1s0x31d988e2eb4e0e05:0x5ddd08a64d2d6a23!8m2!3d1.1276777!4d104.0554723",
                    photos: 'assets/picdetails1.png',
                    numberofkitchen: 2,
                    numberofbedroom: 3,
                    numberofcupboard: 1,
                  ),
                ),
                RecomSpace(
                  space: Space(
                    id: 2,
                    imageurl: 'assets/picrecom2.png',
                    namespace: 'Roemah Nenek',
                    pricespace: '\$11',
                    city: 'Seattle',
                    country: 'Germany',
                    rating: '5/5',
                    address: 'Jln. Kappan Sukses No. 20 \n Palembang',
                    phone: 'tel:+6282317723160',
                    mapurl:
                        "https://www.google.com/maps/place/Batam+'s+Office/@1.1277689,104.0547514,18.77z/data=!4m12!1m6!3m5!1s0x31d9891f5db106f7:0xc99e0a348e673c11!2sAnta+Sari+Semesta.+PT!8m2!3d1.1234601!4d104.0239506!3m4!1s0x31d988e2eb4e0e05:0x5ddd08a64d2d6a23!8m2!3d1.1276777!4d104.0554723",
                    photos: 'assets/picdetails2.png',
                    numberofkitchen: 2,
                    numberofbedroom: 3,
                    numberofcupboard: 1,
                  ),
                ),
                RecomSpace(
                  space: Space(
                    id: 3,
                    imageurl: 'assets/picrecom3.png',
                    namespace: 'Darrling How',
                    pricespace: '\$20',
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rating: '3/5',
                    address: 'Jln. Kappan Sukses No. 20 \n Palembang',
                    phone: 'tel:+6282317723160',
                    mapurl:
                        "https://www.google.com/maps/place/Batam+'s+Office/@1.1277689,104.0547514,18.77z/data=!4m12!1m6!3m5!1s0x31d9891f5db106f7:0xc99e0a348e673c11!2sAnta+Sari+Semesta.+PT!8m2!3d1.1234601!4d104.0239506!3m4!1s0x31d988e2eb4e0e05:0x5ddd08a64d2d6a23!8m2!3d1.1276777!4d104.0554723",
                    photos: 'assets/picdetails3.png',
                    numberofkitchen: 2,
                    numberofbedroom: 3,
                    numberofcupboard: 1,
                  ),
                ),
                RecomSpace(
                  space: Space(
                    id: 4,
                    imageurl: 'assets/picrecom4.png',
                    namespace: 'Orang Crown',
                    pricespace: '\$552',
                    city: 'Halla',
                    country: 'Mexico',
                    rating: '5/5',
                    address: 'Jln. Kappan Sukses No. 20 \n Palembang',
                    phone: 'tel:+6282317723160',
                    mapurl:
                        "https://www.google.com/maps/place/Batam+'s+Office/@1.1277689,104.0547514,18.77z/data=!4m12!1m6!3m5!1s0x31d9891f5db106f7:0xc99e0a348e673c11!2sAnta+Sari+Semesta.+PT!8m2!3d1.1234601!4d104.0239506!3m4!1s0x31d988e2eb4e0e05:0x5ddd08a64d2d6a23!8m2!3d1.1276777!4d104.0554723",
                    photos: 'assets/picdetails4.png',
                    numberofkitchen: 2,
                    numberofbedroom: 3,
                    numberofcupboard: 1,
                  ),
                ),
                RecomSpace(
                  space: Space(
                    id: 5,
                    imageurl: 'assets/picrecom5.png',
                    namespace: 'City of Cactus',
                    pricespace: '\$20',
                    city: 'Jakarta',
                    country: 'Indonesia',
                    rating: '3/5',
                    address: 'Jln. Kappan Sukses No. 20 \n Palembang',
                    phone: 'tel:+6282317723160',
                    mapurl:
                        "https://www.google.com/maps/place/Batam+'s+Office/@1.1277689,104.0547514,18.77z/data=!4m12!1m6!3m5!1s0x31d9891f5db106f7:0xc99e0a348e673c11!2sAnta+Sari+Semesta.+PT!8m2!3d1.1234601!4d104.0239506!3m4!1s0x31d988e2eb4e0e05:0x5ddd08a64d2d6a23!8m2!3d1.1276777!4d104.0554723",
                    photos: 'assets/picdetails5.png',
                    numberofkitchen: 2,
                    numberofbedroom: 3,
                    numberofcupboard: 1,
                  ),
                ),
              ],
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
