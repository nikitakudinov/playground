import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'list_tournament_widget.dart' show ListTournamentWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ListTournamentModel extends FlutterFlowModel<ListTournamentWidget> {
  ///  Local state fields for this page.

  TournamentStruct? tournament;
  void updateTournamentStruct(Function(TournamentStruct) updateFn) =>
      updateFn(tournament ??= TournamentStruct());

  List<TournamentStruct> tournaments = [];
  void addToTournaments(TournamentStruct item) => tournaments.add(item);
  void removeFromTournaments(TournamentStruct item) => tournaments.remove(item);
  void removeAtIndexFromTournaments(int index) => tournaments.removeAt(index);
  void insertAtIndexInTournaments(int index, TournamentStruct item) =>
      tournaments.insert(index, item);
  void updateTournamentsAtIndex(
          int index, Function(TournamentStruct) updateFn) =>
      tournaments[index] = updateFn(tournaments[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (TournamentDataType)] action in LIST_TOURNAMENT widget.
  ApiCallResponse? apiResultcds;
  // Stores action output result for [Custom Action - jsonToDataTypeTournament] action in LIST_TOURNAMENT widget.
  List<TournamentStruct>? tournamentData;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
