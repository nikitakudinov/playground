import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'user_picker_widget.dart' show UserPickerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserPickerModel extends FlutterFlowModel<UserPickerWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (getTeamMembersList)] action in userPicker widget.
  ApiCallResponse? apiResult1dc;
  // Stores action output result for [Custom Action - jsonToDataTypeTeamMember] action in userPicker widget.
  List<TeamMemberStruct>? ccc;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
