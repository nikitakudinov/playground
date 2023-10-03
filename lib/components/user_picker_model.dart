import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'user_picker_widget.dart' show UserPickerWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class UserPickerModel extends FlutterFlowModel<UserPickerWidget> {
  ///  Local state fields for this component.

  List<SearchUserByEmailResultsStruct> searchUserResults = [];
  void addToSearchUserResults(SearchUserByEmailResultsStruct item) =>
      searchUserResults.add(item);
  void removeFromSearchUserResults(SearchUserByEmailResultsStruct item) =>
      searchUserResults.remove(item);
  void removeAtIndexFromSearchUserResults(int index) =>
      searchUserResults.removeAt(index);
  void insertAtIndexInSearchUserResults(
          int index, SearchUserByEmailResultsStruct item) =>
      searchUserResults.insert(index, item);
  void updateSearchUserResultsAtIndex(
          int index, Function(SearchUserByEmailResultsStruct) updateFn) =>
      searchUserResults[index] = updateFn(searchUserResults[index]);

  String selectedUserAvatarVALUE = 'false';

  String selectedUserNicknameVALUE = 'не выбран';

  String selectedUserCountry = 'не выбран';

  String selectedUserFlag = 'false';

  bool searchVISIBILITY = false;

  bool callToTeamButtonVISIBILITY = true;

  bool messageVISIBILITY = false;

  bool squadVISIBILITY = true;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (getUserByEmail)] action in TextField widget.
  ApiCallResponse? apiResultp2tCopy;
  // Stores action output result for [Custom Action - jsonToDataTypeSearchByEmail] action in TextField widget.
  List<SearchUserByEmailResultsStruct>? searchResultsCopy;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
