import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'list_request_widget.dart' show ListRequestWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListRequestModel extends FlutterFlowModel<ListRequestWidget> {
  ///  Local state fields for this page.

  TeamStruct? teamData;
  void updateTeamDataStruct(Function(TeamStruct) updateFn) =>
      updateFn(teamData ??= TeamStruct());

  List<RequestStruct> requestsList = [];
  void addToRequestsList(RequestStruct item) => requestsList.add(item);
  void removeFromRequestsList(RequestStruct item) => requestsList.remove(item);
  void removeAtIndexFromRequestsList(int index) => requestsList.removeAt(index);
  void insertAtIndexInRequestsList(int index, RequestStruct item) =>
      requestsList.insert(index, item);
  void updateRequestsListAtIndex(int index, Function(RequestStruct) updateFn) =>
      requestsList[index] = updateFn(requestsList[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (getRequests)] action in LIST_REQUEST widget.
  ApiCallResponse? requestsDataList;
  // Stores action output result for [Custom Action - jsonToDataTypeRequest] action in LIST_REQUEST widget.
  List<RequestStruct>? requestsLikeDataTypeList;
  // Stores action output result for [Backend Call - API (getUserByFbUserRef)] action in Button widget.
  ApiCallResponse? userData;
  // Stores action output result for [Backend Call - API (addRelations)] action in Button widget.
  ApiCallResponse? apiResulta5c;
  // Stores action output result for [Backend Call - API (updateUserTagAndRole)] action in Button widget.
  ApiCallResponse? apiResultjyo;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
