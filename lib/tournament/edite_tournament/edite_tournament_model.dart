import '/backend/firebase_storage/storage.dart';
import '/components/country_picker/country_picker_widget.dart';
import '/components/organizator_picker_widget.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/actions/actions.dart' as action_blocks;
import 'edite_tournament_widget.dart' show EditeTournamentWidget;
import 'package:easy_debounce/easy_debounce.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class EditeTournamentModel extends FlutterFlowModel<EditeTournamentWidget> {
  ///  Local state fields for this page.

  int? tournamentId;

  int? userId;

  String logo = 'false';

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
  // Model for countryPicker component.
  late CountryPickerModel countryPickerModel;
  // Model for organizatorPicker component.
  late OrganizatorPickerModel organizatorPickerModel;

  /// Initialization and disposal methods.

  void initState(BuildContext context) {
    countryPickerModel = createModel(context, () => CountryPickerModel());
    organizatorPickerModel =
        createModel(context, () => OrganizatorPickerModel());
  }

  void dispose() {
    unfocusNode.dispose();
    nameController?.dispose();
    tagController?.dispose();
    countryPickerModel.dispose();
    organizatorPickerModel.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
