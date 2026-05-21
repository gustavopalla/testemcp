import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_planejamento_sheet_widget.dart'
    show CreatePlanejamentoSheetWidget;
import 'package:flutter/material.dart';

class CreatePlanejamentoSheetModel
    extends FlutterFlowModel<CreatePlanejamentoSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for PlanejamentoAlunoIdField widget.
  FocusNode? planejamentoAlunoIdFieldFocusNode;
  TextEditingController? planejamentoAlunoIdFieldTextController;
  String? Function(BuildContext, String?)?
      planejamentoAlunoIdFieldTextControllerValidator;
  // State field(s) for PlanejamentoNomeField widget.
  FocusNode? planejamentoNomeFieldFocusNode;
  TextEditingController? planejamentoNomeFieldTextController;
  String? Function(BuildContext, String?)?
      planejamentoNomeFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  PlanejamentosRow? rows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    planejamentoAlunoIdFieldFocusNode?.dispose();
    planejamentoAlunoIdFieldTextController?.dispose();

    planejamentoNomeFieldFocusNode?.dispose();
    planejamentoNomeFieldTextController?.dispose();
  }
}
