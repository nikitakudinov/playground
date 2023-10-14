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

  List<RequestStruct> requestsList = [];
  void addToRequestsList(RequestStruct item) => requestsList.add(item);
  void removeFromRequestsList(RequestStruct item) => requestsList.remove(item);
  void removeAtIndexFromRequestsList(int index) => requestsList.removeAt(index);
  void insertAtIndexInRequestsList(int index, RequestStruct item) =>
      requestsList.insert(index, item);
  void updateRequestsListAtIndex(int index, Function(RequestStruct) updateFn) =>
      requestsList[index] = updateFn(requestsList[index]);

  List<RelationStruct> relationFromTeam = [];
  void addToRelationFromTeam(RelationStruct item) => relationFromTeam.add(item);
  void removeFromRelationFromTeam(RelationStruct item) =>
      relationFromTeam.remove(item);
  void removeAtIndexFromRelationFromTeam(int index) =>
      relationFromTeam.removeAt(index);
  void insertAtIndexInRelationFromTeam(int index, RelationStruct item) =>
      relationFromTeam.insert(index, item);
  void updateRelationFromTeamAtIndex(
          int index, Function(RelationStruct) updateFn) =>
      relationFromTeam[index] = updateFn(relationFromTeam[index]);

  List<RelationStruct> relationToUser = [];
  void addToRelationToUser(RelationStruct item) => relationToUser.add(item);
  void removeFromRelationToUser(RelationStruct item) =>
      relationToUser.remove(item);
  void removeAtIndexFromRelationToUser(int index) =>
      relationToUser.removeAt(index);
  void insertAtIndexInRelationToUser(int index, RelationStruct item) =>
      relationToUser.insert(index, item);
  void updateRelationToUserAtIndex(
          int index, Function(RelationStruct) updateFn) =>
      relationToUser[index] = updateFn(relationToUser[index]);

  TeamStruct? team;
  void updateTeamStruct(Function(TeamStruct) updateFn) =>
      updateFn(team ??= TeamStruct());

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (DATALIST)] action in LIST_REQUEST widget.
  ApiCallResponse? apiResult7g6;
  // Stores action output result for [Custom Action - jsonToDataTypeRequest] action in LIST_REQUEST widget.
  List<RequestStruct>? requestData;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
