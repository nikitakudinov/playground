// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<Team1Struct>?> jsonToDataTypeTeam1(List<dynamic>? jsonArray) async {
  // Add your function code here!
  List<Team1Struct> listOfStruct = [];
  for (var item in jsonArray!) {
    listOfStruct.add(Team1Struct.fromMap(item));
  }
  return listOfStruct;
}
