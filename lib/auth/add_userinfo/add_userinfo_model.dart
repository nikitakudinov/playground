import '/auth/firebase_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/firebase_storage/storage.dart';
import '/backend/schema/structs/index.dart';
import '/components/country_picker/country_picker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/custom_code/actions/index.dart' as actions;
import 'add_userinfo_widget.dart' show AddUserinfoWidget;
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddUserinfoModel extends FlutterFlowModel<AddUserinfoWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (DATALIST)] action in ADD_USERINFO widget.
  ApiCallResponse? apiResult2f6;
  // Stores action output result for [Custom Action - jsonToDataTypeCountrie] action in ADD_USERINFO widget.
  List<CountrieStruct>? countryData;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for nickname widget.
  TextEditingController? nicknameController;
  String? Function(BuildContext, String?)? nicknameControllerValidator;
  // Model for countryPicker component.
  late CountryPickerModel countryPickerModel;
  // Stores action output result for [Backend Call - API (USER)] action in Button widget.
  ApiCallResponse? apiResultvqb;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    countryPickerModel = createModel(context, () => CountryPickerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nicknameController?.dispose();
    countryPickerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
