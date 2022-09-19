import 'package:find_house/Pages/Splash.dart';
import 'package:find_house/model/Details_Model.dart';
import 'package:find_house/pages/Calling.dart';
import 'package:find_house/pages/Dashboard.dart';
import 'package:find_house/pages/Details.dart';
import 'package:find_house/pages/Error.dart';
import 'package:find_house/pages/Home.dart';
import 'package:find_house/pages/Map.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:find_house/model/RecomSpace_Model.dart';

void main() => runApp(FindHouse());

class FindHouse extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => Splash(),
        'dashboard': (context) => Dashboard(),
        'home': (context) => Home(),
        'details': (context) => Details(
              details: details_model(
                imagedetails: '',
                spacename: '',
                price: '',
              ),
            ),
        'calling': (context) => Calling(),
        'error': (context) => ErrorPage(),
        'map': (context) => MapPage(),
      },
    );
  }
}
