import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'list_team_model.dart';
export 'list_team_model.dart';

class ListTeamWidget extends StatefulWidget {
  const ListTeamWidget({Key? key}) : super(key: key);

  @override
  _ListTeamWidgetState createState() => _ListTeamWidgetState();
}

class _ListTeamWidgetState extends State<ListTeamWidget> {
  late ListTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ListTeamModel());
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
            'Команды',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto Condensed',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 30.0, 0.0),
              child: FlutterFlowIconButton(
                borderRadius: 0.0,
                borderWidth: 0.0,
                buttonSize: 40.0,
                icon: Icon(
                  Icons.add,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24.0,
                ),
                onPressed: () async {
                  context.pushNamed('ADD_TEAM');
                },
              ),
            ),
          ],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                FutureBuilder<List<TeamRow>>(
                  future: TeamTable().queryRows(
                    queryFn: (q) => q,
                  ),
                  builder: (context, snapshot) {
                    // Customize what your widget looks like when it's loading.
                    if (!snapshot.hasData) {
                      return Center(
                        child: SizedBox(
                          width: 50.0,
                          height: 50.0,
                          child: SpinKitChasingDots(
                            color: FlutterFlowTheme.of(context).primary,
                            size: 50.0,
                          ),
                        ),
                      );
                    }
                    List<TeamRow> listViewTeamRowList = snapshot.data!;
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      primary: false,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: listViewTeamRowList.length,
                      itemBuilder: (context, listViewIndex) {
                        final listViewTeamRow =
                            listViewTeamRowList[listViewIndex];
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
                                          listViewTeamRow.id,
                                          ParamType.int,
                                        ),
                                        'name': serializeParam(
                                          listViewTeamRow.name,
                                          ParamType.String,
                                        ),
                                        'tag': serializeParam(
                                          listViewTeamRow.tag,
                                          ParamType.String,
                                        ),
                                        'logo': serializeParam(
                                          listViewTeamRow.logo,
                                          ParamType.String,
                                        ),
                                        'flag': serializeParam(
                                          listViewTeamRow.flag,
                                          ParamType.String,
                                        ),
                                        'country': serializeParam(
                                          listViewTeamRow.country,
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
                                          listViewTeamRow.name,
                                          ParamType.String,
                                        ),
                                        'logo': serializeParam(
                                          listViewTeamRow.logo,
                                          ParamType.String,
                                        ),
                                        'id': serializeParam(
                                          listViewTeamRow.id,
                                          ParamType.int,
                                        ),
                                        'tag': serializeParam(
                                          listViewTeamRow.tag,
                                          ParamType.String,
                                        ),
                                        'country': serializeParam(
                                          listViewTeamRow.country,
                                          ParamType.String,
                                        ),
                                        'flag': serializeParam(
                                          listViewTeamRow.flag,
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
                                            listViewTeamRow.logo!,
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
                                            '[${listViewTeamRow.tag}] ${listViewTeamRow.name}',
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
                                                  listViewTeamRow.flag!,
                                                  width: 24.0,
                                                  height: 16.0,
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        5.0, 0.0, 0.0, 0.0),
                                                child: Text(
                                                  listViewTeamRow.country!,
                                                  style: FlutterFlowTheme.of(
                                                          context)
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
      ),
    );
  }
}
