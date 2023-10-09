import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'view_team_model.dart';
export 'view_team_model.dart';

class ViewTeamWidget extends StatefulWidget {
  const ViewTeamWidget({
    Key? key,
    required this.teamID,
    required this.name,
    required this.tag,
    required this.logo,
    required this.country,
    required this.flag,
  }) : super(key: key);

  final int? teamID;
  final String? name;
  final String? tag;
  final String? logo;
  final String? country;
  final String? flag;

  @override
  _ViewTeamWidgetState createState() => _ViewTeamWidgetState();
}

class _ViewTeamWidgetState extends State<ViewTeamWidget> {
  late ViewTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ViewTeamModel());
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
          automaticallyImplyLeading: true,
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
              Text(
                valueOrDefault<String>(
                  widget.name,
                  'no name',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Text(
                valueOrDefault<String>(
                  widget.teamID?.toString(),
                  '0',
                ),
                style: FlutterFlowTheme.of(context).bodyMedium,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Hello World',
                    style: FlutterFlowTheme.of(context).bodyMedium,
                  ),
                ],
              ),
              ListView(
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3.0),
                        child: Image.network(
                          'https://picsum.photos/seed/733/600',
                          width: 40.0,
                          height: 40.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        'Hello World',
                        style: FlutterFlowTheme.of(context).bodyMedium,
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
