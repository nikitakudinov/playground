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
  // Stores action output result for [Backend Call - API (LETATIONSLIST)] action in EDITE_TEAM widget.
  ApiCallResponse? apiResultiha;
  // Stores action output result for [Custom Action - jsonToDataTypeUser] action in EDITE_TEAM widget.
  List<UserStruct>? teamMembersData;
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
  // Model for countryPicker component.
  late CountryPickerModel countryPickerModel;
  // Stores action output result for [Backend Call - API (TEAM)] action in Button widget.
  ApiCallResponse? apiResultt3s;
  // Model for userPicker component.
  late UserPickerModel userPickerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    countryPickerModel = createModel(context, () => CountryPickerModel());
    userPickerModel = createModel(context, () => UserPickerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nameController?.dispose();
    tagController?.dispose();
    countryPickerModel.dispose();
    userPickerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
