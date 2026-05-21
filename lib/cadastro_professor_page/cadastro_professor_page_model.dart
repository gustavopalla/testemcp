import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'cadastro_professor_page_widget.dart' show CadastroProfessorPageWidget;
import 'package:flutter/material.dart';

class CadastroProfessorPageModel
    extends FlutterFlowModel<CadastroProfessorPageWidget> {
  ///  Local state fields for this page.

  String? name = '';

  String? email = '';

  String? password = '';

  String? confirmPassword = '';

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textFieldTextController1;
  String? Function(BuildContext, String?)? textFieldTextController1Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textFieldTextController2;
  String? Function(BuildContext, String?)? textFieldTextController2Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textFieldTextController3;
  late bool textFieldVisibility1;
  String? Function(BuildContext, String?)? textFieldTextController3Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textFieldTextController4;
  late bool textFieldVisibility2;
  String? Function(BuildContext, String?)? textFieldTextController4Validator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Button widget.
  List<ProfilesRow>? rows;

  @override
  void initState(BuildContext context) {
    textFieldVisibility1 = false;
    textFieldVisibility2 = false;
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textFieldTextController1?.dispose();

    textFieldFocusNode2?.dispose();
    textFieldTextController2?.dispose();

    textFieldFocusNode3?.dispose();
    textFieldTextController3?.dispose();

    textFieldFocusNode4?.dispose();
    textFieldTextController4?.dispose();
  }
}
