import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/api_requests/api_manager.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';

Future updateAppStateAuthUser(BuildContext context) async {
  ApiCallResponse? apiResultnzr;

  apiResultnzr = await GetdataGroup.datalistCall.call(
    contentType: 'User',
    fields: 'Id,FBUserId,Nickname',
    field1: 'FBUserId',
    field2: currentUserUid,
  );
  if ((apiResultnzr?.succeeded ?? true)) {
    FFAppState().update(() {
      FFAppState().updateAuthenticatedUserStruct(
        (e) => e
          ..id = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Id''',
          )
          ..nickname = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].Nickname''',
          ).toString().toString()
          ..fBUserId = getJsonField(
            (apiResultnzr?.jsonBody ?? ''),
            r'''$.list[:].FBUserId''',
          ).toString().toString(),
      );
    });
  }
}
