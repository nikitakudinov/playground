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
import 'l_i_s_t_t_e_a_m_new_model.dart';
export 'l_i_s_t_t_e_a_m_new_model.dart';

class LISTTEAMNewWidget extends StatefulWidget {
  const LISTTEAMNewWidget({Key? key}) : super(key: key);

  @override
  _LISTTEAMNewWidgetState createState() => _LISTTEAMNewWidgetState();
}

class _LISTTEAMNewWidgetState extends State<LISTTEAMNewWidget> {
  late LISTTEAMNewModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LISTTEAMNewModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.apiResultanr = await GetdataGroup.getdatafieldsCall.call(
        datatype: 'Team',
        fields:
            'Id,name,CreatedAt,UpdatedAt,tag,owner,members,logo,country,flag',
      );
      if ((_model.apiResultanr?.succeeded ?? true)) {
        _model.teamData = await actions.jsonToDataType(
          getJsonField(
            (_model.apiResultanr?.jsonBody ?? ''),
            r'''$.list''',
            true,
          ),
        );
        setState(() {
          _model.teams = _model.teamData!.toList().cast<TeamStruct>();
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
          backgroundColor: FlutterFlowTheme.of(context).secondary,
          automaticallyImplyLeading: false,
          title: Text(
            'Page Title',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto Condensed',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Builder(
                builder: (context) {
                  final teamsList = _model.teams.toList();
                  return ListView.builder(
                    padding: EdgeInsets.zero,
                    primary: false,
                    shrinkWrap: true,
                    scrollDirection: Axis.vertical,
                    itemCount: teamsList.length,
                    itemBuilder: (context, teamsListIndex) {
                      final teamsListItem = teamsList[teamsListIndex];
                      return Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 1.0),
                            child: Container(
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .secondaryBackground,
                              ),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed(
                                    'VIEW_TEAM',
                                    queryParameters: {
                                      'teamID': serializeParam(
                                        teamsListItem.id,
                                        ParamType.int,
                                      ),
                                      'name': serializeParam(
                                        teamsListItem.name,
                                        ParamType.String,
                                      ),
                                      'tag': serializeParam(
                                        teamsListItem.tag,
                                        ParamType.String,
                                      ),
                                      'logo': serializeParam(
                                        teamsListItem.logo,
                                        ParamType.String,
                                      ),
                                      'flag': serializeParam(
                                        teamsListItem.flag,
                                        ParamType.String,
                                      ),
                                      'country': serializeParam(
                                        teamsListItem.country,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                onLongPress: () async {
                                  context.pushNamed(
                                    'EDITE_TEAM',
                                    queryParameters: {
                                      'name': serializeParam(
                                        teamsListItem.name,
                                        ParamType.String,
                                      ),
                                      'logo': serializeParam(
                                        teamsListItem.logo,
                                        ParamType.String,
                                      ),
                                      'id': serializeParam(
                                        teamsListItem.id,
                                        ParamType.int,
                                      ),
                                      'tag': serializeParam(
                                        teamsListItem.tag,
                                        ParamType.String,
                                      ),
                                      'country': serializeParam(
                                        teamsListItem.country,
                                        ParamType.String,
                                      ),
                                      'flag': serializeParam(
                                        teamsListItem.flag,
                                        ParamType.String,
                                      ),
                                    }.withoutNulls,
                                  );
                                },
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          10.0, 10.0, 10.0, 10.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(3.0),
                                        child: Image.network(
                                          teamsListItem.logo,
                                          width: 50.0,
                                          height: 50.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          '[${teamsListItem.tag}] ${teamsListItem.name}',
                                          style: FlutterFlowTheme.of(context)
                                              .titleMedium,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(2.0),
                                              child: Image.network(
                                                teamsListItem.flag,
                                                width: 24.0,
                                                height: 16.0,
                                                fit: BoxFit.cover,
                                              ),
                                            ),
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(5.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                teamsListItem.country,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .labelMedium,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
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
