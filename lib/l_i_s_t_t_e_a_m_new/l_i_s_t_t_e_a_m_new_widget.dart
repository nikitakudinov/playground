import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
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
              FutureBuilder<ApiCallResponse>(
                future: GetdataGroup.getdataCall.call(
                  datatype: 'Team',
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
                  final listViewGetdataResponse = snapshot.data!;
                  return Builder(
                    builder: (context) {
                      final asss = getJsonField(
                        (_model.apiResultanr?.jsonBody ?? ''),
                        r'''$.list''',
                      ).toList();
                      return ListView.builder(
                        padding: EdgeInsets.zero,
                        shrinkWrap: true,
                        scrollDirection: Axis.vertical,
                        itemCount: asss.length,
                        itemBuilder: (context, asssIndex) {
                          final asssItem = asss[asssIndex];
                          return Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                GetdataGroup.getdataCall
                                    .name(
                                      listViewGetdataResponse.jsonBody,
                                    )
                                    .toString(),
                                style: FlutterFlowTheme.of(context).bodyMedium,
                              ),
                            ],
                          );
                        },
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
