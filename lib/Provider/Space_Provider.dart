import 'dart:convert';

import 'package:find_house/model/RecomSpace_Model.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:developer';

class SpaceProvider extends ChangeNotifier {
  GetRecommendedSpace() async {
    var result = await http
        .get(Uri.parse('https://bwa-cozy.herokuapp.com/recommended-spaces'));

    print(result.statusCode);
    log(result.body);

    if (result.statusCode == 200) {
      List data = jsonDecode(result.body);
      List<Space> spaces = data.map((item) => Space.fromJson(item)).toList();
      return spaces;
    }
    return <Space>[];
  }
}
