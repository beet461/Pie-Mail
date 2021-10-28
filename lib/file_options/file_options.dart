library fos;

import 'dart:convert';

import 'package:flutter/services.dart';

class FileOptions {
    /// getOptions loads raw text of options.json using [rootBundle.loadString]
    /// It is decoded with [json.decode] to get an array of json objects
    dynamic getOptions() async {
      final String fileString = await rootBundle.loadString('assets/options.json');
      final data = json.decode(fileString);
      return data;
    }
}