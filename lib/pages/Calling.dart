import 'package:find_house/model/Details_Model.dart';
import 'package:find_house/pages/Dashboard.dart';
import 'package:find_house/pages/Details.dart';
import 'package:find_house/pages/Home.dart';
import 'package:flutter/material.dart';
import 'package:find_house/theme/calling.dart';
import 'package:find_house/pages/Details.dart';

class Calling extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 211),
        child: Column(
          children: [
            Center(
              child: Image.asset(
                'assets/piccalling.png',
                width: 150,
                height: 150,
              ),
            ),
            SizedBox(
              height: 65,
            ),
            Text(
              'Amanda Shayna',
              style: NameCalling,
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '12 : 30 minutes',
              style: SecondCalling,
            ),
            SizedBox(
              height: 60,
            ),
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
                'assets/btnclosecalling.png',
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
