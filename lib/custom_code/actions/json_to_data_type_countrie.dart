// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<CountrieStruct>?> jsonToDataTypeCountrie(
    List<dynamic>? jsonArray) async {
  List<CountrieStruct> listOfStruct = [];
  for (var item in jsonArray!) {
    listOfStruct.add(CountrieStruct.fromMap(item));
  }
  return listOfStruct;
}
