import '/backend/api_requests/api_calls.dart';
import '/backend/firebase_storage/storage.dart';
import '/components/user_picker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'edite_team_widget.dart' show EditeTeamWidget;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditeTeamModel extends FlutterFlowModel<EditeTeamWidget> {
  ///  Local state fields for this page.

  String? imagePath = 'false';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for name widget.
  TextEditingController? nameController;
  String? Function(BuildContext, String?)? nameControllerValidator;
  // State field(s) for tag widget.
  TextEditingController? tagController;
  String? Function(BuildContext, String?)? tagControllerValidator;
  // Stores action output result for [Backend Call - API (updateTeam)] action in Button widget.
  ApiCallResponse? apiResultp5p;
  // Model for userPicker component.
  late UserPickerModel userPickerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    userPickerModel = createModel(context, () => UserPickerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nameController?.dispose();
    tagController?.dispose();
    userPickerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
