import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/backend/supabase/supabase.dart';
import '/components/country_picker/country_picker_widget.dart';
import '/components/user_picker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'edite_team_model.dart';
export 'edite_team_model.dart';

class EditeTeamWidget extends StatefulWidget {
  const EditeTeamWidget({
    Key? key,
    required this.name,
    required this.tag,
    required this.logo,
    this.id,
    String? country,
    required this.flag,
  })  : this.country = country ?? '0',
        super(key: key);

  final String? name;
  final String? tag;
  final String? logo;
  final int? id;
  final String country;
  final String? flag;

  @override
  _EditeTeamWidgetState createState() => _EditeTeamWidgetState();
}

class _EditeTeamWidgetState extends State<EditeTeamWidget> {
  late EditeTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EditeTeamModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      setState(() {
        _model.imagePath = widget.logo;
      });
      _model.apiResultiha = await RelationGroup.letationslistCall.call(
        contentType: 'Team',
        contentId: widget.id,
        relationField: 'MembersCount',
      );
      if ((_model.apiResultiha?.succeeded ?? true)) {
        _model.teamMembersData = await actions.jsonToDataTypeUser(
          getJsonField(
            (_model.apiResultiha?.jsonBody ?? ''),
            r'''$.list''',
            true,
          ),
        );
        setState(() {
          FFAppState().teamMembers =
              _model.teamMembersData!.toList().cast<UserStruct>();
        });
      }
    });

    _model.nameController ??= TextEditingController(text: widget.name);
    _model.tagController ??= TextEditingController(text: widget.tag);
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
            'Управление командой',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Roboto Condensed',
                  color: Colors.white,
                  fontSize: 22.0,
                ),
          ),
          actions: [],
          centerTitle: true,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Container(
                        width: 150.0,
                        height: 150.0,
                        child: Stack(
                          alignment: AlignmentDirectional(0.0, 0.0),
                          children: [
                            Container(
                              width: 120.0,
                              height: 120.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                valueOrDefault<String>(
                                  _model.uploadedFileUrl,
                                  'https://firebasestorage.googleapis.com/v0/b/nocode-80c8e.appspot.com/o/placeholders%2Fimage-7XR1sw6U%20-%20transformed%20(1).png?alt=media&token=671e5180-78fc-4e79-b537-358e63243c72&_gl=1*1tm2dgs*_ga*MTcwNzE5NTQ0MS4xNjkzNDE5OTky*_ga_CW55HF8NVT*MTY5NjAxNDg2NS42NS4xLjE2OTYwMTQ5MTAuMTUuMC4w',
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Container(
                              width: 120.0,
                              height: 120.0,
                              clipBehavior: Clip.antiAlias,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                              ),
                              child: Image.network(
                                _model.imagePath!,
                                fit: BoxFit.cover,
                              ),
                            ),
                            if (_model.imagePath !=
                                'https://firebasestorage.googleapis.com/v0/b/nocode-80c8e.appspot.com/o/placeholders%2Fimage-7XR1sw6U%20-%20transformed%20(1).png?alt=media&token=671e5180-78fc-4e79-b537-358e63243c72&_gl=1*fdj3w2*_ga*MTcwNzE5NTQ0MS4xNjkzNDE5OTky*_ga_CW55HF8NVT*MTY5NjA1NDc3NS42Ny4xLjE2OTYwNTQ3OTIuNDMuMC4w')
                              Align(
                                alignment: AlignmentDirectional(1.00, -1.00),
                                child: FlutterFlowIconButton(
                                  borderColor: Colors.transparent,
                                  borderRadius: 20.0,
                                  borderWidth: 0.0,
                                  buttonSize: 40.0,
                                  icon: Icon(
                                    Icons.close,
                                    color: FlutterFlowTheme.of(context).accent1,
                                    size: 24.0,
                                  ),
                                  onPressed: () async {
                                    setState(() {
                                      _model.imagePath =
                                          'https://firebasestorage.googleapis.com/v0/b/nocode-80c8e.appspot.com/o/placeholders%2Fimage-7XR1sw6U%20-%20transformed%20(1).png?alt=media&token=671e5180-78fc-4e79-b537-358e63243c72&_gl=1*fdj3w2*_ga*MTcwNzE5NTQ0MS4xNjkzNDE5OTky*_ga_CW55HF8NVT*MTY5NjA1NDc3NS42Ny4xLjE2OTYwNTQ3OTIuNDMuMC4w';
                                    });
                                    setState(() {
                                      _model.isDataUploading = false;
                                      _model.uploadedLocalFile = FFUploadedFile(
                                          bytes: Uint8List.fromList([]));
                                      _model.uploadedFileUrl = '';
                                    });
                                  },
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                    if (_model.imagePath ==
                        'https://firebasestorage.googleapis.com/v0/b/nocode-80c8e.appspot.com/o/placeholders%2Fimage-7XR1sw6U%20-%20transformed%20(1).png?alt=media&token=671e5180-78fc-4e79-b537-358e63243c72&_gl=1*fdj3w2*_ga*MTcwNzE5NTQ0MS4xNjkzNDE5OTky*_ga_CW55HF8NVT*MTY5NjA1NDc3NS42Ny4xLjE2OTYwNTQ3OTIuNDMuMC4w')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final selectedMedia = await selectMedia(
                              storageFolderPath: 'logo',
                              maxWidth: 150.00,
                              maxHeight: 150.00,
                              mediaSource: MediaSource.photoGallery,
                              multiImage: false,
                            );
                            if (selectedMedia != null &&
                                selectedMedia.every((m) => validateFileFormat(
                                    m.storagePath, context))) {
                              setState(() => _model.isDataUploading = true);
                              var selectedUploadedFiles = <FFUploadedFile>[];

                              var downloadUrls = <String>[];
                              try {
                                selectedUploadedFiles = selectedMedia
                                    .map((m) => FFUploadedFile(
                                          name: m.storagePath.split('/').last,
                                          bytes: m.bytes,
                                          height: m.dimensions?.height,
                                          width: m.dimensions?.width,
                                          blurHash: m.blurHash,
                                        ))
                                    .toList();

                                downloadUrls = await uploadSupabaseStorageFiles(
                                  bucketName: widget.name!,
                                  selectedFiles: selectedMedia,
                                );
                              } finally {
                                _model.isDataUploading = false;
                              }
                              if (selectedUploadedFiles.length ==
                                      selectedMedia.length &&
                                  downloadUrls.length == selectedMedia.length) {
                                setState(() {
                                  _model.uploadedLocalFile =
                                      selectedUploadedFiles.first;
                                  _model.uploadedFileUrl = downloadUrls.first;
                                });
                              } else {
                                setState(() {});
                                return;
                              }
                            }

                            setState(() {
                              _model.imagePath = _model.uploadedFileUrl;
                            });
                          },
                          text: 'Загрузить логотип',
                          options: FFButtonOptions(
                            height: 40.0,
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 0.0, 15.0, 0.0),
                            iconPadding: EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 0.0),
                            color:
                                FlutterFlowTheme.of(context).primaryBackground,
                            textStyle: FlutterFlowTheme.of(context)
                                .labelSmall
                                .override(
                                  fontFamily: 'Saira Semi Condensed',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                            elevation: 3.0,
                            borderSide: BorderSide(
                              color: FlutterFlowTheme.of(context).primaryText,
                              width: 1.0,
                            ),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                        ),
                      ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(
                          15.0, 15.0, 15.0, 15.0),
                      child: Material(
                        color: Colors.transparent,
                        elevation: 1.0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                            borderRadius: BorderRadius.circular(5.0),
                          ),
                          alignment: AlignmentDirectional(0.00, 0.00),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 15.0, 15.0, 5.0),
                                child: TextFormField(
                                  controller: _model.nameController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: 'Название команды',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium
                                        .override(
                                          fontFamily: 'Saira Semi Condensed',
                                          color: FlutterFlowTheme.of(context)
                                              .primary,
                                        ),
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Saira Semi Condensed',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  validator: _model.nameControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 5.0),
                                child: TextFormField(
                                  controller: _model.tagController,
                                  obscureText: false,
                                  decoration: InputDecoration(
                                    labelText: '[TAG]',
                                    labelStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    hintStyle: FlutterFlowTheme.of(context)
                                        .labelMedium,
                                    enabledBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryBackground,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    errorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                    focusedErrorBorder: UnderlineInputBorder(
                                      borderSide: BorderSide(
                                        color:
                                            FlutterFlowTheme.of(context).error,
                                        width: 1.0,
                                      ),
                                      borderRadius: BorderRadius.circular(0.0),
                                    ),
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .labelMedium
                                      .override(
                                        fontFamily: 'Saira Semi Condensed',
                                        color: FlutterFlowTheme.of(context)
                                            .primaryText,
                                      ),
                                  validator: _model.tagControllerValidator
                                      .asValidator(context),
                                ),
                              ),
                              wrapWithModel(
                                model: _model.countryPickerModel,
                                updateCallback: () => setState(() {}),
                                child: CountryPickerWidget(
                                  name: widget.country,
                                  flag: widget.flag,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    15.0, 0.0, 15.0, 0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Expanded(
                                      child: Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            0.0, 15.0, 0.0, 15.0),
                                        child: FFButtonWidget(
                                          onPressed: () async {
                                            _model.apiResultt3s =
                                                await UpdatedataGroup.teamCall
                                                    .call(
                                              contentType: 'Team',
                                              contentId: widget.id,
                                              name: _model.nameController.text,
                                              updatedAt: getCurrentTimestamp
                                                  .toString(),
                                              tag: _model.tagController.text,
                                              country: _model.countryPickerModel
                                                  .selectedName,
                                              flag: _model.countryPickerModel
                                                  .selectedFlag,
                                              logo: _model.imagePath,
                                            );
                                            if ((_model
                                                    .apiResultt3s?.succeeded ??
                                                true)) {
                                              context.pushNamed('LIST_TEAM');
                                            }

                                            setState(() {});
                                          },
                                          text: 'сохранить',
                                          options: FFButtonOptions(
                                            height: 40.0,
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    15.0, 0.0, 15.0, 0.0),
                                            iconPadding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 0.0, 0.0, 0.0),
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            textStyle:
                                                FlutterFlowTheme.of(context)
                                                    .titleSmall
                                                    .override(
                                                      fontFamily:
                                                          'Saira Semi Condensed',
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .secondary,
                                                    ),
                                            elevation: 3.0,
                                            borderSide: BorderSide(
                                              color: Colors.transparent,
                                              width: 1.0,
                                            ),
                                            borderRadius:
                                                BorderRadius.circular(3.0),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                  child: wrapWithModel(
                    model: _model.userPickerModel,
                    updateCallback: () => setState(() {}),
                    child: UserPickerWidget(
                      docId: widget.id!,
                      teamName: widget.name!,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
