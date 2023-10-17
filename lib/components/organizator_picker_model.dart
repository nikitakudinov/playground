import '/backend/api_requests/api_calls.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'organizator_picker_widget.dart' show OrganizatorPickerWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class OrganizatorPickerModel extends FlutterFlowModel<OrganizatorPickerWidget> {
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

  bool squadVISIBILITY = true;

  String? selectedUserIdVALUE;

  int? selectedUserIdINT;

  int? selectedIndex;

  List<UserStruct> searchedUser = [];
  void addToSearchedUser(UserStruct item) => searchedUser.add(item);
  void removeFromSearchedUser(UserStruct item) => searchedUser.remove(item);
  void removeAtIndexFromSearchedUser(int index) => searchedUser.removeAt(index);
  void insertAtIndexInSearchedUser(int index, UserStruct item) =>
      searchedUser.insert(index, item);
  void updateSearchedUserAtIndex(int index, Function(UserStruct) updateFn) =>
      searchedUser[index] = updateFn(searchedUser[index]);

  bool deliteMemberMessageVISIBILITY = false;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (CREATREQUEST)] action in Button widget.
  ApiCallResponse? apiResultkll;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (DATALIST)] action in Button widget.
  ApiCallResponse? apiResult8em;
  // Stores action output result for [Custom Action - jsonToDataTypeUser] action in Button widget.
  List<UserStruct>? usersdata;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {
    textController?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
