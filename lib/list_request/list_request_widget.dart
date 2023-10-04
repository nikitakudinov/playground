import '/auth/firebase_auth/auth_util.dart';
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
      _model.apiResulte66 = await GetRequestsCall.call();
      if ((_model.apiResulte66?.succeeded ?? true)) {
        _model.requestsData = await actions.jsonToDataTypeRequest(
          getJsonField(
            (_model.apiResulte66?.jsonBody ?? ''),
            r'''$.list''',
            true,
          ),
        );
        setState(() {
          FFAppState().requests =
              _model.requestsData!.toList().cast<RequestStruct>();
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
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) {
                  final requestsList = FFAppState()
                      .requests
                      .where((e) => e.toUser == currentUserUid)
                      .toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: requestsList.length,
                    itemBuilder: (context, requestsListIndex) {
                      final requestsListItem = requestsList[requestsListIndex];
                      return Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 15.0, 15.0),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: FutureBuilder<ApiCallResponse>(
                              future: GetTeamCall.call(
                                id: requestsListItem.fromTeam,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: SpinKitChasingDots(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 50.0,
                                      ),
                                    ),
                                  );
                                }
                                final requestToJoinfromTeamToUserGetTeamResponse =
                                    snapshot.data!;
                                return Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0.0, 0.0, 5.0, 0.0),
                                              child: ClipRRect(
                                                borderRadius:
                                                    BorderRadius.circular(8.0),
                                                child: Image.network(
                                                  getJsonField(
                                                    requestToJoinfromTeamToUserGetTeamResponse
                                                        .jsonBody,
                                                    r'''$.logo''',
                                                  ),
                                                  width: 30.0,
                                                  height: 30.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Text(
                                              getJsonField(
                                                requestToJoinfromTeamToUserGetTeamResponse
                                                    .jsonBody,
                                                r'''$.name''',
                                              ).toString(),
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium,
                                            ),
                                          ],
                                        ),
                                        Expanded(
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Container(
                                                width:
                                                    MediaQuery.sizeOf(context)
                                                            .width *
                                                        1.0,
                                                decoration: BoxDecoration(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          5.0),
                                                ),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Команда ${getJsonField(
                                                      requestToJoinfromTeamToUserGetTeamResponse
                                                          .jsonBody,
                                                      r'''$.name''',
                                                    ).toString()}предлагает вступить в ее ряды. ',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: FFButtonWidget(
                                              onPressed: () {
                                                print('Button pressed ...');
                                              },
                                              text: 'Отказаться',
                                              options: FFButtonOptions(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 0.0, 0.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Saira Semi Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .accent1,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .accent1,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(3.0),
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            child: FFButtonWidget(
                                              onPressed: () async {
                                                _model.userIdByUserRef =
                                                    await GetUserByFbUserRefCall
                                                        .call(
                                                  fbUserRef: currentUserUid,
                                                );
                                                if ((_model.userIdByUserRef
                                                        ?.succeeded ??
                                                    true)) {
                                                  _model.apiResult0l3 =
                                                      await AddRelationsCall
                                                          .call(
                                                    dataTypeForUpdate: 'Team',
                                                    idOfDataForUpdate:
                                                        getJsonField(
                                                      requestToJoinfromTeamToUserGetTeamResponse
                                                          .jsonBody,
                                                      r'''$.Id''',
                                                    ),
                                                    fildName: 'members',
                                                    fieldId: getJsonField(
                                                      (_model.userIdByUserRef
                                                              ?.jsonBody ??
                                                          ''),
                                                      r'''$.list[:].Id''',
                                                    ),
                                                  );
                                                  if ((_model.apiResult0l3
                                                          ?.succeeded ??
                                                      true)) {
                                                    _model.apiResultg82 =
                                                        await UpdateUserCall
                                                            .call(
                                                      id: GetUserByFbUserRefCall
                                                          .listId(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      email:
                                                          GetUserByFbUserRefCall
                                                              .listEmail(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString(),
                                                      nickname:
                                                          GetUserByFbUserRefCall
                                                              .listNickname(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString(),
                                                      fbUserRef:
                                                          GetUserByFbUserRefCall
                                                              .listFbUserRef(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString(),
                                                      avatar:
                                                          GetUserByFbUserRefCall
                                                              .listAvatar(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                      countryName:
                                                          GetUserByFbUserRefCall
                                                              .listCountryName(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString(),
                                                      createdAt:
                                                          GetUserByFbUserRefCall
                                                              .listCreatedAt(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ).toString(),
                                                      updatedAt:
                                                          getCurrentTimestamp
                                                              .toString(),
                                                      tag: GetTeamCall.tag(
                                                        requestToJoinfromTeamToUserGetTeamResponse
                                                            .jsonBody,
                                                      ).toString(),
                                                      teamRole: 'Игрок команды',
                                                      flag:
                                                          GetUserByFbUserRefCall
                                                              .listFlag(
                                                        (_model.userIdByUserRef
                                                                ?.jsonBody ??
                                                            ''),
                                                      ),
                                                    );
                                                    if ((_model.apiResultg82
                                                            ?.succeeded ??
                                                        true)) {
                                                      _model.apiResult636 =
                                                          await DeliteRequestCall
                                                              .call(
                                                        id: requestsListItem.id,
                                                      );
                                                    }
                                                  }
                                                }

                                                setState(() {});
                                              },
                                              text: 'Вступить',
                                              options: FFButtonOptions(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        15.0, 0.0, 15.0, 0.0),
                                                iconPadding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                            0.0, 0.0, 0.0, 0.0),
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .tertiary,
                                                textStyle:
                                                    FlutterFlowTheme.of(context)
                                                        .titleSmall
                                                        .override(
                                                          fontFamily:
                                                              'Saira Semi Condensed',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primary,
                                                        ),
                                                elevation: 3.0,
                                                borderSide: BorderSide(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  width: 1.0,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(3.0),
                                              ),
                                            ),
                                          ),
                                        ].divide(SizedBox(width: 15.0)),
                                      ),
                                    ),
                                  ],
                                );
                              },
                            ),
                          ),
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
    );
  }
}
