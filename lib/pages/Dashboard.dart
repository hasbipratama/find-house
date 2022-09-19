import 'package:find_house/theme/splash.dart';
import 'package:flutter/material.dart';
import '../pages/Home.dart';

class Dashboard extends StatefulWidget {
  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    Widget Main(
      final String ImageUrl,
      final String Tittle,
      final String Subtittle,
      final String ButtonSplash,
    ) {
      return SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 50,
            left: 30,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImageUrl,
                width: 50,
                height: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                Tittle,
                style: TittleSplash,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                Subtittle,
                style: SubTittleSplash,
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                width: 210,
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
                        builder: (context) => Home(),
                      ),
                    );
                  },
                  child: Text(
                    ButtonSplash,
                    style: Button,
                  ),
                ),
              )
            ],
          ),
        ),
      );
    }

    return Scaffold(
      body: Stack(
        children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Image.asset('assets/backgroundsplash.png')),
          Main(
            'assets/logosplash.png',
            'Find Cozy House\nto Stay and Happy',
            'Stop membuang banyak waktu\npada tempat yang tidak habitable',
            'Explore Now',
          ),
        ],
      ),
    );
  }
}
