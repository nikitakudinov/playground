import '/backend/api_requests/api_calls.dart';
import '/components/tournament_grid_widget.dart';
import '/components/tournament_tabs_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import 'view_tournament_widget.dart' show ViewTournamentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewTournamentModel extends FlutterFlowModel<ViewTournamentWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TournamentTabs component.
  late TournamentTabsModel tournamentTabsModel;
  // Model for TournamentGrid component.
  late TournamentGridModel tournamentGridModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tournamentTabsModel = createModel(context, () => TournamentTabsModel());
    tournamentGridModel = createModel(context, () => TournamentGridModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tournamentTabsModel.dispose();
    tournamentGridModel.dispose();
  }

  /// Action blocks are added here.

  Future creatTournamentMatch(
    BuildContext context, {
    int? tournamentId,
  }) async {
    ApiCallResponse? creatMatch1;

    creatMatch1 = await CreatdataGroup.creatmatchCall.call(
      status: 'Добавлен в сетку турнира',
      createdAt: getCurrentTimestamp.toString(),
      updatedAt: getCurrentTimestamp.toString(),
      round: 1,
      pair: 1,
      tournamentId: widget.tournamentId,
    );
  }

  /// Additional helper methods are added here.
}
