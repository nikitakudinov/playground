// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<SearchUserResultItemStruct>?> jsonToDataTypeResultItem(
    List<dynamic>? jsonArray) async {
  List<SearchUserResultItemStruct> listOfStruct = [];
  for (var item in jsonArray!) {
    listOfStruct.add(SearchUserResultItemStruct.fromMap(item));
  }
  return listOfStruct;
}
