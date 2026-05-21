import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_exercicio_sheet_widget.dart' show CreateExercicioSheetWidget;
import 'package:flutter/material.dart';

class CreateExercicioSheetModel
    extends FlutterFlowModel<CreateExercicioSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for ExTreinoIdField widget.
  FocusNode? exTreinoIdFieldFocusNode;
  TextEditingController? exTreinoIdFieldTextController;
  String? Function(BuildContext, String?)?
      exTreinoIdFieldTextControllerValidator;
  // State field(s) for ExNomeField widget.
  FocusNode? exNomeFieldFocusNode;
  TextEditingController? exNomeFieldTextController;
  String? Function(BuildContext, String?)? exNomeFieldTextControllerValidator;
  // State field(s) for ExGrupoField widget.
  FocusNode? exGrupoFieldFocusNode;
  TextEditingController? exGrupoFieldTextController;
  String? Function(BuildContext, String?)? exGrupoFieldTextControllerValidator;
  // State field(s) for ExSeriesField widget.
  FocusNode? exSeriesFieldFocusNode;
  TextEditingController? exSeriesFieldTextController;
  String? Function(BuildContext, String?)? exSeriesFieldTextControllerValidator;
  // State field(s) for ExRepsField widget.
  FocusNode? exRepsFieldFocusNode;
  TextEditingController? exRepsFieldTextController;
  String? Function(BuildContext, String?)? exRepsFieldTextControllerValidator;
  // State field(s) for ExDescansoField widget.
  FocusNode? exDescansoFieldFocusNode;
  TextEditingController? exDescansoFieldTextController;
  String? Function(BuildContext, String?)?
      exDescansoFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  ExerciciosRow? rows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    exTreinoIdFieldFocusNode?.dispose();
    exTreinoIdFieldTextController?.dispose();

    exNomeFieldFocusNode?.dispose();
    exNomeFieldTextController?.dispose();

    exGrupoFieldFocusNode?.dispose();
    exGrupoFieldTextController?.dispose();

    exSeriesFieldFocusNode?.dispose();
    exSeriesFieldTextController?.dispose();

    exRepsFieldFocusNode?.dispose();
    exRepsFieldTextController?.dispose();

    exDescansoFieldFocusNode?.dispose();
    exDescansoFieldTextController?.dispose();
  }
}
