import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_chanakya_niti/model/chapters_model.dart';

class HomeProvider extends ChangeNotifier {
  static List<ChapterModel> chapters = [];
  List data = [];

  HomeProvider() {
    convertToString();
  }

  convertToString() async {
    log('---------- convertToString called ----------');
    for (int i = 1; i <= 17; i++) {
      String json = await rootBundle.loadString('assets/json/chapter$i.json');
      data = jsonDecode(json);
      chapters.add(
        ChapterModel.fromJson(data, 'ch$i'),
      );
    }
  }
}
