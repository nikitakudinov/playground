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

Future<List<OrganizatorStruct>?> jsonToDataTypeOrganizator(
    List<dynamic>? jsonArray) async {
  // Add your function code here!
  List<OrganizatorStruct> listOfStruct = [];
  for (var item in jsonArray!) {
    listOfStruct.add(OrganizatorStruct.fromMap(item));
  }
  return listOfStruct;
}
