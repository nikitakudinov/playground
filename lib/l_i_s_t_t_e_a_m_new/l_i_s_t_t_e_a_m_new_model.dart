import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'l_i_s_t_t_e_a_m_new_widget.dart' show LISTTEAMNewWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LISTTEAMNewModel extends FlutterFlowModel<LISTTEAMNewWidget> {
  ///  Local state fields for this page.

  List<TeamStruct> teams = [];
  void addToTeams(TeamStruct item) => teams.add(item);
  void removeFromTeams(TeamStruct item) => teams.remove(item);
  void removeAtIndexFromTeams(int index) => teams.removeAt(index);
  void insertAtIndexInTeams(int index, TeamStruct item) =>
      teams.insert(index, item);
  void updateTeamsAtIndex(int index, Function(TeamStruct) updateFn) =>
      teams[index] = updateFn(teams[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (GETDATA)] action in LIST_TEAM_new widget.
  ApiCallResponse? apiResultanr;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
