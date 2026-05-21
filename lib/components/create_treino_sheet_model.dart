import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'create_treino_sheet_widget.dart' show CreateTreinoSheetWidget;
import 'package:flutter/material.dart';

class CreateTreinoSheetModel extends FlutterFlowModel<CreateTreinoSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for TreinoPlanejamentoIdField widget.
  FocusNode? treinoPlanejamentoIdFieldFocusNode;
  TextEditingController? treinoPlanejamentoIdFieldTextController;
  String? Function(BuildContext, String?)?
      treinoPlanejamentoIdFieldTextControllerValidator;
  // State field(s) for TreinoNomeField widget.
  FocusNode? treinoNomeFieldFocusNode;
  TextEditingController? treinoNomeFieldTextController;
  String? Function(BuildContext, String?)?
      treinoNomeFieldTextControllerValidator;
  // State field(s) for TreinoDiaDropdown widget.
  String? treinoDiaDropdownValue;
  FormFieldController<String>? treinoDiaDropdownValueController;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  TreinosRow? rows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    treinoPlanejamentoIdFieldFocusNode?.dispose();
    treinoPlanejamentoIdFieldTextController?.dispose();

    treinoNomeFieldFocusNode?.dispose();
    treinoNomeFieldTextController?.dispose();
  }
}
