import '/auth/supabase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/country_picker/country_picker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'add_team_model.dart';
export 'add_team_model.dart';

class AddTeamWidget extends StatefulWidget {
  const AddTeamWidget({Key? key}) : super(key: key);

  @override
  _AddTeamWidgetState createState() => _AddTeamWidgetState();
}

class _AddTeamWidgetState extends State<AddTeamWidget> {
  late AddTeamModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddTeamModel());

    _model.nameController ??= TextEditingController();
    _model.tagController ??= TextEditingController();
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
            'Создать команду',
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
                            if (_model.uploadedFileUrl != null &&
                                _model.uploadedFileUrl != '')
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
                    if (_model.uploadedFileUrl == null ||
                        _model.uploadedFileUrl == '')
                      Padding(
                        padding: EdgeInsetsDirectional.fromSTEB(
                            0.0, 15.0, 0.0, 15.0),
                        child: FFButtonWidget(
                          onPressed: () async {
                            final selectedMedia = await selectMedia(
                              storageFolderPath: 'avatar',
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
                                  bucketName: currentUserEmail,
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
                  ],
                ),
                Padding(
                  padding:
                      EdgeInsetsDirectional.fromSTEB(15.0, 15.0, 15.0, 15.0),
                  child: Material(
                    color: Colors.transparent,
                    elevation: 1.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                    child: Container(
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      alignment: AlignmentDirectional(0.00, 0.00),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(
                                15.0, 15.0, 15.0, 0.0),
                            child: TextFormField(
                              controller: _model.nameController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: 'Название команды',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
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
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 10.0),
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
                                15.0, 0.0, 15.0, 0.0),
                            child: TextFormField(
                              controller: _model.tagController,
                              autofocus: true,
                              obscureText: false,
                              decoration: InputDecoration(
                                labelText: '[TAG]',
                                labelStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
                                hintStyle:
                                    FlutterFlowTheme.of(context).labelMedium,
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
                                    color: FlutterFlowTheme.of(context).primary,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                errorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                focusedErrorBorder: UnderlineInputBorder(
                                  borderSide: BorderSide(
                                    color: FlutterFlowTheme.of(context).error,
                                    width: 1.0,
                                  ),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                contentPadding: EdgeInsetsDirectional.fromSTEB(
                                    0.0, 15.0, 0.0, 10.0),
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
                            child: CountryPickerWidget(),
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
                                        // Creat Team Data
                                        _model.apiResult21b =
                                            await CreatdataGroup.creatteamCall
                                                .call(
                                          name: _model.nameController.text,
                                          createdAt:
                                              getCurrentTimestamp.toString(),
                                          updatedAt:
                                              getCurrentTimestamp.toString(),
                                          tag: _model.tagController.text,
                                          country: _model
                                              .countryPickerModel.selectedName,
                                          flag: _model
                                              .countryPickerModel.selectedFlag,
                                          logo: _model.uploadedFileUrl,
                                          creatorFBUserId: FFAppState()
                                              .AuthenticatedUser
                                              .fBUserId,
                                        );
                                        if ((_model.apiResult21b?.succeeded ??
                                            true)) {
                                          // Get Id of created team
                                          _model.apiResultmar =
                                              await GetdataGroup.datalistCall
                                                  .call(
                                            contentType: 'Team',
                                            fields: 'Id',
                                            field1: 'CreatorFBUserId',
                                            field2: FFAppState()
                                                .AuthenticatedUser
                                                .fBUserId,
                                          );
                                          if ((_model.apiResultmar?.succeeded ??
                                              true)) {
                                            // Update User Info TAG,TEAMROLE,LINEUP
                                            _model.apiResults46 =
                                                await UpdatedataGroup
                                                    .userteamCall
                                                    .call(
                                              contentType: 'User',
                                              contentId: FFAppState()
                                                  .AuthenticatedUser
                                                  .id,
                                              tag: _model.tagController.text,
                                              updatedAt: getCurrentTimestamp
                                                  .toString(),
                                              teamRole: 'Основатель',
                                              lineUp: 'True',
                                            );
                                            if ((_model
                                                    .apiResults46?.succeeded ??
                                                true)) {
                                              // ADD REALATION CREATOR
                                              _model.apiResultcjp =
                                                  await RelationGroup.addCall
                                                      .call(
                                                contentType: 'Team',
                                                contentId: getJsonField(
                                                  (_model.apiResultmar
                                                          ?.jsonBody ??
                                                      ''),
                                                  r'''$.list[:].Id''',
                                                ),
                                                retionField: 'CreatorCount',
                                                relationId: FFAppState()
                                                    .AuthenticatedUser
                                                    .id,
                                              );
                                              if ((_model.apiResultcjp
                                                      ?.succeeded ??
                                                  true)) {
                                                // ADD REALATION MEMBERS
                                                _model.apiResultcjps =
                                                    await RelationGroup.addCall
                                                        .call(
                                                  contentType: 'Team',
                                                  contentId: getJsonField(
                                                    (_model.apiResultmar
                                                            ?.jsonBody ??
                                                        ''),
                                                    r'''$.list[:].Id''',
                                                  ),
                                                  retionField: 'MembersCount',
                                                  relationId: FFAppState()
                                                      .AuthenticatedUser
                                                      .id,
                                                );
                                                if ((_model.apiResultcjps
                                                        ?.succeeded ??
                                                    true)) {
                                                  context
                                                      .pushNamed('LIST_TEAM');
                                                }
                                              }
                                            }
                                          }
                                        }

                                        setState(() {});
                                      },
                                      text: 'Создать',
                                      options: FFButtonOptions(
                                        height: 40.0,
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            15.0, 0.0, 15.0, 0.0),
                                        iconPadding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                0.0, 0.0, 0.0, 0.0),
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        textStyle: FlutterFlowTheme.of(context)
                                            .titleSmall
                                            .override(
                                              fontFamily:
                                                  'Saira Semi Condensed',
                                              color:
                                                  FlutterFlowTheme.of(context)
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
          ),
        ),
      ),
    );
  }
}
