import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_request_model.dart';
export 'list_request_model.dart';

class ListRequestWidget extends StatefulWidget {
  const ListRequestWidget({Key? key}) : super(key: key);

  @override
  _ListRequestWidgetState createState() => _ListRequestWidgetState();
}

class _ListRequestWidgetState extends State<ListRequestWidget> {
  late ListRequestModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListRequestModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultnps = await GetdataGroup.datalistCall.call(
        contentType: 'Request',
        fields: 'Type,Id,CreatorId,FromTeamId,ToUserId,CreatedAt,UpdatedAt',
        field1: 'ToUserId',
        field2: FFAppState().AuthenticatedUser.id.toString(),
      );
      if ((_model.apiResultnps?.succeeded ?? true)) {
        _model.requestData = await actions.jsonToDataTypeRequest(
          getJsonField(
            (_model.apiResultnps?.jsonBody ?? ''),
            r'''$.list''',
            true,
          ),
        );
        setState(() {
          _model.requestsList =
              _model.requestData!.toList().cast<RequestStruct>();
        });
      }
    });
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          title: Text(
            'Запросы',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto Condensed',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 0.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Builder(
                  builder: (context) {
                    final requestList = _model.requestsList
                        .where((e) => e.type == 'Приглашение в команду')
                        .toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: requestList.length,
                      itemBuilder: (context, requestListIndex) {
                        final requestListItem = requestList[requestListIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 15.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: GetdataGroup.datalistCall.call(
                              contentType: 'Team',
                              fields:
                                  'Id,Name,Tag,Logo,Country,Flag,CreatedAt,UpdatedAt',
                              field1: 'Id',
                              field2: requestListItem.fromTeamId.toString(),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitChasingDots(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final containerDatalistResponse = snapshot.data!;
                              return Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Builder(
                                    builder: (context) {
                                      final teamData = getJsonField(
                                        containerDatalistResponse.jsonBody,
                                        r'''$.list''',
                                      ).toList();
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(teamData.length,
                                            (teamDataIndex) {
                                          final teamDataItem =
                                              teamData[teamDataIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      child: Image.network(
                                                        getJsonField(
                                                          teamDataItem,
                                                          r'''$.Logo''',
                                                        ),
                                                        width: 40.0,
                                                        height: 40.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        '[${getJsonField(
                                                          teamDataItem,
                                                          r'''$.Tag''',
                                                        ).toString()}] ${getJsonField(
                                                          teamDataItem,
                                                          r'''$.Name''',
                                                        ).toString()}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                getJsonField(
                                                                  teamDataItem,
                                                                  r'''$.Flag''',
                                                                ),
                                                                width: 16.0,
                                                                height: 12.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            getJsonField(
                                                              teamDataItem,
                                                              r'''$.Country''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Команда предлагает вступить в ее ряды. ',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: () {
                                                          print(
                                                              'Button pressed ...');
                                                        },
                                                        text: 'Отказаться',
                                                        options:
                                                            FFButtonOptions(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Saira Semi Condensed',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .accent1,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .accent1,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.0),
                                                        ),
                                                      ),
                                                    ),
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          _model.apiResulttta =
                                                              await UpdatedataGroup
                                                                  .userteamCall
                                                                  .call(
                                                            contentType: 'User',
                                                            contentId: FFAppState()
                                                                .AuthenticatedUser
                                                                .id,
                                                            tag: getJsonField(
                                                              teamDataItem,
                                                              r'''$.Tag''',
                                                            ).toString(),
                                                            updatedAt:
                                                                getCurrentTimestamp
                                                                    .toString(),
                                                            teamRole:
                                                                'Игрок команды',
                                                            lineUp: 'false',
                                                          );
                                                          if ((_model
                                                                  .apiResulttta
                                                                  ?.succeeded ??
                                                              true)) {
                                                            _model.apiResultlnz =
                                                                await RelationGroup
                                                                    .addCall
                                                                    .call(
                                                              contentType:
                                                                  'Team',
                                                              contentId:
                                                                  getJsonField(
                                                                teamDataItem,
                                                                r'''$.Id''',
                                                              ),
                                                              retionField:
                                                                  'MembersCount',
                                                              relationId:
                                                                  FFAppState()
                                                                      .AuthenticatedUser
                                                                      .id,
                                                            );
                                                            if ((_model
                                                                    .apiResultlnz
                                                                    ?.succeeded ??
                                                                true)) {
                                                              await showDialog(
                                                                context:
                                                                    context,
                                                                builder:
                                                                    (alertDialogContext) {
                                                                  return AlertDialog(
                                                                    title: Text(
                                                                        '1'),
                                                                    actions: [
                                                                      TextButton(
                                                                        onPressed:
                                                                            () =>
                                                                                Navigator.pop(alertDialogContext),
                                                                        child: Text(
                                                                            'Ok'),
                                                                      ),
                                                                    ],
                                                                  );
                                                                },
                                                              );
                                                              _model.apiResultuxo =
                                                                  await DelitedataGroup
                                                                      .delitedataCall
                                                                      .call(
                                                                contentType:
                                                                    'Request',
                                                                contentId:
                                                                    requestListItem
                                                                        .id,
                                                              );
                                                              if ((_model
                                                                      .apiResultuxo
                                                                      ?.succeeded ??
                                                                  true)) {
                                                                context
                                                                    .pushNamed(
                                                                        'HOME');
                                                              }
                                                            }
                                                          }

                                                          setState(() {});
                                                        },
                                                        text: 'Вступить',
                                                        options:
                                                            FFButtonOptions(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Saira Semi Condensed',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 15.0)),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
                Builder(
                  builder: (context) {
                    final requestList = _model.requestsList
                        .where((e) => e.type == 'Исключение из команды')
                        .toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: requestList.length,
                      itemBuilder: (context, requestListIndex) {
                        final requestListItem = requestList[requestListIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              15.0, 15.0, 15.0, 15.0),
                          child: FutureBuilder<ApiCallResponse>(
                            future: GetdataGroup.datalistCall.call(
                              contentType: 'Team',
                              fields:
                                  'Id,Name,Tag,Logo,Country,Flag,CreatedAt,UpdatedAt',
                              field1: 'Id',
                              field2: requestListItem.fromTeamId.toString(),
                            ),
                            builder: (context, snapshot) {
                              // Customize what your widget looks like when it's loading.
                              if (!snapshot.hasData) {
                                return Center(
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitChasingDots(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                );
                              }
                              final containerDatalistResponse = snapshot.data!;
                              return Container(
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context).tertiary,
                                  borderRadius: BorderRadius.circular(5.0),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      10.0, 10.0, 10.0, 10.0),
                                  child: Builder(
                                    builder: (context) {
                                      final teamDatas = getJsonField(
                                        containerDatalistResponse.jsonBody,
                                        r'''$.list''',
                                      ).toList();
                                      return Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: List.generate(
                                            teamDatas.length, (teamDatasIndex) {
                                          final teamDatasItem =
                                              teamDatas[teamDatasIndex];
                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Container(
                                                          width:
                                                              MediaQuery.sizeOf(
                                                                          context)
                                                                      .width *
                                                                  1.0,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        5.0),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        10.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Text(
                                                              'Вы были исключены из состава команды.',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium,
                                                            ),
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Padding(
                                                    padding:
                                                        EdgeInsetsDirectional
                                                            .fromSTEB(0.0, 0.0,
                                                                10.0, 0.0),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              5.0),
                                                      child: Image.network(
                                                        getJsonField(
                                                          teamDatasItem,
                                                          r'''$.Logo''',
                                                        ),
                                                        width: 40.0,
                                                        height: 40.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                  Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      Text(
                                                        '[${getJsonField(
                                                          teamDatasItem,
                                                          r'''$.Tag''',
                                                        ).toString()}] ${getJsonField(
                                                          teamDatasItem,
                                                          r'''$.Name''',
                                                        ).toString()}',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge,
                                                      ),
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        5.0,
                                                                        0.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          0.0),
                                                              child:
                                                                  Image.network(
                                                                getJsonField(
                                                                  teamDatasItem,
                                                                  r'''$.Flag''',
                                                                ),
                                                                width: 16.0,
                                                                height: 12.0,
                                                                fit: BoxFit
                                                                    .cover,
                                                              ),
                                                            ),
                                                          ),
                                                          Text(
                                                            getJsonField(
                                                              teamDatasItem,
                                                              r'''$.Country''',
                                                            ).toString(),
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .labelMedium,
                                                          ),
                                                        ],
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: Row(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  children: [
                                                    Expanded(
                                                      child: FFButtonWidget(
                                                        onPressed: () async {
                                                          _model.apiResult8p4 =
                                                              await DelitedataGroup
                                                                  .delitedataCall
                                                                  .call(
                                                            contentType:
                                                                'Request',
                                                            contentId:
                                                                requestListItem
                                                                    .id,
                                                          );
                                                          if ((_model
                                                                  .apiResult8p4
                                                                  ?.succeeded ??
                                                              true)) {
                                                            context.pushNamed(
                                                                'HOME');
                                                          }

                                                          setState(() {});
                                                        },
                                                        text: 'Ок',
                                                        options:
                                                            FFButtonOptions(
                                                          padding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      15.0,
                                                                      0.0,
                                                                      15.0,
                                                                      0.0),
                                                          iconPadding:
                                                              EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      0.0,
                                                                      0.0,
                                                                      0.0),
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiary,
                                                          textStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .titleSmall
                                                                  .override(
                                                                    fontFamily:
                                                                        'Saira Semi Condensed',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .primary,
                                                                  ),
                                                          elevation: 3.0,
                                                          borderSide:
                                                              BorderSide(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primary,
                                                            width: 1.0,
                                                          ),
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      3.0),
                                                        ),
                                                      ),
                                                    ),
                                                  ].divide(
                                                      SizedBox(width: 15.0)),
                                                ),
                                              ),
                                            ],
                                          );
                                        }),
                                      );
                                    },
                                  ),
                                ),
                              );
                            },
                          ),
                        );
                      },
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
