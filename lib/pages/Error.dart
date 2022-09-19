import 'package:flutter/material.dart';
import 'package:find_house/theme/error.dart';
import 'package:find_house/theme/calling.dart';
import 'package:find_house/theme/splash.dart';
import 'package:find_house/pages/Home.dart';

class ErrorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 214),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/404.png',
                width: 300,
                height: 85,
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Text(
              'Where are you going?',
              style: Going,
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              'Seems like the page that you were \nrequested is already gone',
              style: SecondCalling,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 50,
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
                    'Back to Home',
                    style: Button,
                  )),
            )
          ],
        ),
      ),
    );
  }
}
