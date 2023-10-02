import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'user_picker_model.dart';
export 'user_picker_model.dart';

class UserPickerWidget extends StatefulWidget {
  const UserPickerWidget({
    Key? key,
    int? docId,
  })  : this.docId = docId ?? 0,
        super(key: key);

  final int docId;

  @override
  _UserPickerWidgetState createState() => _UserPickerWidgetState();
}

class _UserPickerWidgetState extends State<UserPickerWidget> {
  late UserPickerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserPickerModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Padding(
        padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    'Состав',
                    style: FlutterFlowTheme.of(context).titleMedium,
                  ),
                ),
                FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Пригласить',
                  options: FFButtonOptions(
                    padding: EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    iconPadding:
                        EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                    textStyle: FlutterFlowTheme.of(context).labelSmall.override(
                          fontFamily: 'Saira Semi Condensed',
                          color: FlutterFlowTheme.of(context).primaryText,
                        ),
                    elevation: 0.0,
                    borderSide: BorderSide(
                      color: FlutterFlowTheme.of(context).primaryText,
                      width: 1.0,
                    ),
                    borderRadius: BorderRadius.circular(3.0),
                  ),
                ),
              ],
            ),
            FutureBuilder<ApiCallResponse>(
              future: GetTeamMembersListCall.call(
                teamID: valueOrDefault<int>(
                  widget.docId,
                  0,
                ),
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
                final squadGetTeamMembersListResponse = snapshot.data!;
                return Builder(
                  builder: (context) {
                    final teamMembersList = getJsonField(
                      squadGetTeamMembersListResponse.jsonBody,
                      r'''$.list''',
                    ).toList();
                    return ListView.builder(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: teamMembersList.length,
                      itemBuilder: (context, teamMembersListIndex) {
                        final teamMembersListItem =
                            teamMembersList[teamMembersListIndex];
                        return Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(
                              0.0, 5.0, 0.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(3.0),
                                child: Image.network(
                                  getJsonField(
                                    teamMembersListItem,
                                    r'''$.Avatar''',
                                  ),
                                  width: 40.0,
                                  height: 40.0,
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Padding(
                                    padding: EdgeInsetsDirectional.fromSTEB(
                                        10.0, 0.0, 0.0, 0.0),
                                    child: Text(
                                      valueOrDefault<String>(
                                        getJsonField(
                                          teamMembersListItem,
                                          r'''$.Nickname''',
                                        ).toString(),
                                        '0',
                                      ),
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
            Container(
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
