import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'user_picker_widget.dart' show UserPickerWidget;
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

  String? selectedUserIdVALUE;

  bool teamMemberSettingsVISIBILITY = false;

  int? selectedUserIdINT;

  int? selectedIndex;

  ///  State fields for stateful widgets in this component.

  // State field(s) for Column widget.
  ScrollController? columnController;
  // State field(s) for MemberSettingsCol widget.
  ScrollController? memberSettingsCol;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for Checkbox widget.
  bool? checkboxValue;
  // State field(s) for TextField widget.
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for searchResultsList widget.
  ScrollController? searchResultsList;
  // State field(s) for squad widget.
  ScrollController? squad;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    columnController = ScrollController();
    memberSettingsCol = ScrollController();
    searchResultsList = ScrollController();
    squad = ScrollController();
  }

  void dispose() {
    columnController?.dispose();
    memberSettingsCol?.dispose();
    textController?.dispose();
    searchResultsList?.dispose();
    squad?.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
