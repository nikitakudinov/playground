import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/components/tournament_tabs_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/actions/actions.dart' as action_blocks;
import '/custom_code/actions/index.dart' as actions;
import 'view_tournament_widget.dart' show ViewTournamentWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ViewTournamentModel extends FlutterFlowModel<ViewTournamentWidget> {
  ///  Local state fields for this page.

  List<MatchStruct> matches = [];
  void addToMatches(MatchStruct item) => matches.add(item);
  void removeFromMatches(MatchStruct item) => matches.remove(item);
  void removeAtIndexFromMatches(int index) => matches.removeAt(index);
  void insertAtIndexInMatches(int index, MatchStruct item) =>
      matches.insert(index, item);
  void updateMatchesAtIndex(int index, Function(MatchStruct) updateFn) =>
      matches[index] = updateFn(matches[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for TournamentTabs component.
  late TournamentTabsModel tournamentTabsModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    tournamentTabsModel = createModel(context, () => TournamentTabsModel());
  }

  void dispose() {
    unfocusNode.dispose();
    tournamentTabsModel.dispose();
  }

  /// Action blocks are added here.

  Future creatTournamentMatch(
    BuildContext context, {
    int? tournamentId,
  }) async {
    ApiCallResponse? creatMatch1;
    ApiCallResponse? creatMatch2;
    ApiCallResponse? creatMatch3;
    ApiCallResponse? creatMatch4;
    ApiCallResponse? creatMatch5;
    ApiCallResponse? creatMatch6;
    ApiCallResponse? creatMatch7;
    ApiCallResponse? creatMatch8;
    ApiCallResponse? creatMatch9;
    ApiCallResponse? creatMatch10;
    ApiCallResponse? creatMatch11;
    ApiCallResponse? creatMatch12;
    ApiCallResponse? creatMatch13;
    ApiCallResponse? creatMatch14;
    ApiCallResponse? creatMatch15;

    creatMatch1 = await CreatdataGroup.creatmatchCall.call(
      status: 'Добавлен в сетку турнира',
      createdAt: getCurrentTimestamp.toString(),
      updatedAt: getCurrentTimestamp.toString(),
      round: 1,
      pair: 1,
      tournamentId: widget.tournamentId,
    );
    if ((creatMatch1?.succeeded ?? true)) {
      creatMatch2 = await CreatdataGroup.creatmatchCall.call(
        status: 'Добавлен в сетку турнира',
        createdAt: getCurrentTimestamp.toString(),
        updatedAt: getCurrentTimestamp.toString(),
        round: 1,
        pair: 2,
        tournamentId: widget.tournamentId,
      );
      if ((creatMatch2?.succeeded ?? true)) {
        creatMatch3 = await CreatdataGroup.creatmatchCall.call(
          status: 'Добавлен в сетку турнира',
          createdAt: getCurrentTimestamp.toString(),
          updatedAt: getCurrentTimestamp.toString(),
          round: 1,
          pair: 3,
          tournamentId: widget.tournamentId,
        );
        if ((creatMatch3?.succeeded ?? true)) {
          creatMatch4 = await CreatdataGroup.creatmatchCall.call(
            status: 'Добавлен в сетку турнира',
            createdAt: getCurrentTimestamp.toString(),
            updatedAt: getCurrentTimestamp.toString(),
            round: 1,
            pair: 4,
            tournamentId: widget.tournamentId,
          );
          if ((creatMatch4?.succeeded ?? true)) {
            creatMatch5 = await CreatdataGroup.creatmatchCall.call(
              status: 'Добавлен в сетку турнира',
              createdAt: getCurrentTimestamp.toString(),
              updatedAt: getCurrentTimestamp.toString(),
              round: 1,
              pair: 5,
              tournamentId: widget.tournamentId,
            );
            if ((creatMatch5?.succeeded ?? true)) {
              creatMatch6 = await CreatdataGroup.creatmatchCall.call(
                status: 'Добавлен в сетку турнира',
                createdAt: getCurrentTimestamp.toString(),
                updatedAt: getCurrentTimestamp.toString(),
                round: 1,
                pair: 6,
                tournamentId: widget.tournamentId,
              );
              if ((creatMatch6?.succeeded ?? true)) {
                creatMatch7 = await CreatdataGroup.creatmatchCall.call(
                  status: 'Добавлен в сетку турнира',
                  createdAt: getCurrentTimestamp.toString(),
                  updatedAt: getCurrentTimestamp.toString(),
                  round: 1,
                  pair: 7,
                  tournamentId: widget.tournamentId,
                );
                if ((creatMatch7?.succeeded ?? true)) {
                  creatMatch8 = await CreatdataGroup.creatmatchCall.call(
                    status: 'Добавлен в сетку турнира',
                    createdAt: getCurrentTimestamp.toString(),
                    updatedAt: getCurrentTimestamp.toString(),
                    round: 1,
                    pair: 8,
                    tournamentId: widget.tournamentId,
                  );
                  if ((creatMatch8?.succeeded ?? true)) {
                    creatMatch9 = await CreatdataGroup.creatmatchCall.call(
                      status: 'Добавлен в сетку турнира',
                      createdAt: getCurrentTimestamp.toString(),
                      updatedAt: getCurrentTimestamp.toString(),
                      round: 2,
                      pair: 1,
                      tournamentId: widget.tournamentId,
                    );
                    if ((creatMatch9?.succeeded ?? true)) {
                      creatMatch10 = await CreatdataGroup.creatmatchCall.call(
                        status: 'Добавлен в сетку турнира',
                        createdAt: getCurrentTimestamp.toString(),
                        updatedAt: getCurrentTimestamp.toString(),
                        round: 2,
                        pair: 2,
                        tournamentId: widget.tournamentId,
                      );
                      if ((creatMatch10?.succeeded ?? true)) {
                        creatMatch11 = await CreatdataGroup.creatmatchCall.call(
                          status: 'Добавлен в сетку турнира',
                          createdAt: getCurrentTimestamp.toString(),
                          updatedAt: getCurrentTimestamp.toString(),
                          round: 2,
                          pair: 3,
                          tournamentId: widget.tournamentId,
                        );
                        if ((creatMatch11?.succeeded ?? true)) {
                          creatMatch12 =
                              await CreatdataGroup.creatmatchCall.call(
                            status: 'Добавлен в сетку турнира',
                            createdAt: getCurrentTimestamp.toString(),
                            updatedAt: getCurrentTimestamp.toString(),
                            round: 2,
                            pair: 4,
                            tournamentId: widget.tournamentId,
                          );
                          if ((creatMatch12?.succeeded ?? true)) {
                            creatMatch13 =
                                await CreatdataGroup.creatmatchCall.call(
                              status: 'Добавлен в сетку турнира',
                              createdAt: getCurrentTimestamp.toString(),
                              updatedAt: getCurrentTimestamp.toString(),
                              round: 3,
                              pair: 1,
                              tournamentId: widget.tournamentId,
                            );
                            if ((creatMatch13?.succeeded ?? true)) {
                              creatMatch14 =
                                  await CreatdataGroup.creatmatchCall.call(
                                status: 'Добавлен в сетку турнира',
                                createdAt: getCurrentTimestamp.toString(),
                                updatedAt: getCurrentTimestamp.toString(),
                                round: 3,
                                pair: 2,
                                tournamentId: widget.tournamentId,
                              );
                              if ((creatMatch14?.succeeded ?? true)) {
                                creatMatch15 =
                                    await CreatdataGroup.creatmatchCall.call(
                                  status: 'Добавлен в сетку турнира',
                                  createdAt: getCurrentTimestamp.toString(),
                                  updatedAt: getCurrentTimestamp.toString(),
                                  round: 4,
                                  pair: 1,
                                  tournamentId: widget.tournamentId,
                                );
                                if ((creatMatch15?.succeeded ?? true)) {
                                  await showDialog(
                                    context: context,
                                    builder: (alertDialogContext) {
                                      return AlertDialog(
                                        title:
                                            Text('Все матчи турнира созданы'),
                                        actions: [
                                          TextButton(
                                            onPressed: () => Navigator.pop(
                                                alertDialogContext),
                                            child: Text('Ok'),
                                          ),
                                        ],
                                      );
                                    },
                                  );
                                }
                              }
                            }
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  Future loadMatches(
    BuildContext context, {
    int? tournamentId,
  }) async {
    ApiCallResponse? apiResulta4h;
    List<MatchStruct>? matchesData;

    apiResulta4h = await GetdataGroup.datalistCall.call(
      contentType: 'Match',
      field1: 'TournamentId',
      field2: widget.tournamentId?.toString(),
    );
    if ((apiResulta4h?.succeeded ?? true)) {
      matchesData = await actions.jsonToDataTypeMatch(
        getJsonField(
          (apiResulta4h?.jsonBody ?? ''),
          r'''$.list''',
          true,
        ),
      );
      matches = matchesData!.toList().cast<MatchStruct>();
      await showDialog(
        context: context,
        builder: (alertDialogContext) {
          return AlertDialog(
            title: Text('MatchesLoaded'),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(alertDialogContext),
                child: Text('Ok'),
              ),
            ],
          );
        },
      );
    }
  }

  /// Additional helper methods are added here.
}
