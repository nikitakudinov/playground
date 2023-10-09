import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'country_picker_widget.dart' show CountryPickerWidget;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CountryPickerModel extends FlutterFlowModel<CountryPickerWidget> {
  ///  Local state fields for this component.

  bool countryButtonVISIBILITY = true;

  bool countriesListVISIBILITY = false;

  String selectedName = '      Выбрать страну...';

  String selectedFlag = 'false';

  /// Initialization and disposal methods.

  void initState(BuildContext context) {}

  void dispose() {}

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
