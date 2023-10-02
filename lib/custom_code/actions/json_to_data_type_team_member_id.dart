// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<TeamMemberIdStruct>?> jsonToDataTypeTeamMemberId(
    List<dynamic>? jsonArray) async {
  // Add your function code here!
  List<TeamMemberIdStruct> listOfStruct = [];
  for (var item in jsonArray!) {
    listOfStruct.add(TeamMemberIdStruct.fromMap(item));
  }
  return listOfStruct;
}
