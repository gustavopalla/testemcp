import '/flutter_flow/flutter_flow_util.dart';
import 'weather_page_widget.dart' show WeatherPageWidget;
import 'package:flutter/material.dart';

class WeatherPageModel extends FlutterFlowModel<WeatherPageWidget> {
  ///  Local state fields for this page.

  String? searchInput;

  ///  State fields for stateful widgets in this page.

  // State field(s) for searchField widget.
  FocusNode? searchFieldFocusNode;
  TextEditingController? searchFieldTextController;
  String? Function(BuildContext, String?)? searchFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    searchFieldFocusNode?.dispose();
    searchFieldTextController?.dispose();
  }
}
