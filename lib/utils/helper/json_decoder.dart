import 'dart:convert';

import 'package:flutter/services.dart';

Future<Map<String, dynamic>> getDecodedJson(String filePath) async {
  final jsonData = await rootBundle.loadString(filePath);
  final decodedData = jsonDecode(jsonData) as Map<String, dynamic>;
  return decodedData;
}
