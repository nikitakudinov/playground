import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'tournament_grid_model.dart';
export 'tournament_grid_model.dart';

class TournamentGridWidget extends StatefulWidget {
  const TournamentGridWidget({Key? key}) : super(key: key);

  @override
  _TournamentGridWidgetState createState() => _TournamentGridWidgetState();
}

class _TournamentGridWidgetState extends State<TournamentGridWidget> {
  late TournamentGridModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TournamentGridModel());
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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 0.0, 15.0),
              child: Container(
                width: 250.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Builder(
                  builder: (context) {
                    final round1 = FFAppState().matches.toList();
                    return ListView.separated(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      itemCount: round1.length,
                      separatorBuilder: (_, __) => SizedBox(height: 10.0),
                      itemBuilder: (context, round1Index) {
                        final round1Item = round1[round1Index];
                        return Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context).tertiary,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          child: Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                10.0, 10.0, 10.0, 10.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '12.10.23',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Saira Semi Condensed',
                                              fontSize: 14.0,
                                              fontStyle: FontStyle.italic,
                                              lineHeight: 1.0,
                                            ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            6.0, 0.0, 0.0, 0.0),
                                        child: Text(
                                          'Раунд: ${round1Item.round.toString()} Пара: ${round1Item.pair.toString()}',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily:
                                                    'Saira Semi Condensed',
                                                fontSize: 14.0,
                                                fontStyle: FontStyle.italic,
                                                lineHeight: 1.0,
                                              ),
                                        ),
                                      ),
                                      Text(
                                        'Счет',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily:
                                                  'Saira Semi Condensed',
                                              fontSize: 14.0,
                                              fontStyle: FontStyle.italic,
                                              lineHeight: 1.0,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 0.0, 0.0, 5.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 0.0, 5.0, 0.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(3.0),
                                          child: Image.network(
                                            round1Item.rival1Logo,
                                            width: 30.0,
                                            height: 30.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              '[${round1Item.rival1Tag}]',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyLarge,
                                            ),
                                            Text(
                                              round1Item.rival1Name,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Saira Semi Condensed',
                                                        lineHeight: 0.8,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 10.0, 0.0),
                                            child: Text(
                                              '${round1Item.riva1Wins.toString()}',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .titleSmall,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          0.0, 0.0, 5.0, 0.0),
                                      child: ClipRRect(
                                        borderRadius:
                                            BorderRadius.circular(3.0),
                                        child: Image.network(
                                          round1Item.rival2Logo,
                                          width: 30.0,
                                          height: 30.0,
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '[${round1Item.rival2Tag}]',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyLarge,
                                          ),
                                          Text(
                                            round1Item.rival2Name,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily:
                                                      'Saira Semi Condensed',
                                                  lineHeight: 0.8,
                                                ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 10.0, 0.0),
                                          child: Text(
                                            '${round1Item.rival2Wins.toString()}',
                                            style: FlutterFlowTheme.of(context)
                                                .titleSmall,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                ),
              ),
            ),
          ].divide(SizedBox(width: 10.0)),
        ),
      ),
    );
  }
}
