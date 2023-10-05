import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'l_i_s_t_t_e_a_m_new_widget.dart' show LISTTEAMNewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LISTTEAMNewModel extends FlutterFlowModel<LISTTEAMNewWidget> {
  ///  Local state fields for this page.

  List<Team1Struct> teams = [];
  void addToTeams(Team1Struct item) => teams.add(item);
  void removeFromTeams(Team1Struct item) => teams.remove(item);
  void removeAtIndexFromTeams(int index) => teams.removeAt(index);
  void insertAtIndexInTeams(int index, Team1Struct item) =>
      teams.insert(index, item);
  void updateTeamsAtIndex(int index, Function(Team1Struct) updateFn) =>
      teams[index] = updateFn(teams[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (DataType)] action in LIST_TEAM_new widget.
  ApiCallResponse? apiResultanr;
  // Stores action output result for [Custom Action - jsonToDataTypeTeam1] action in LIST_TEAM_new widget.
  List<Team1Struct>? teamsData;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
