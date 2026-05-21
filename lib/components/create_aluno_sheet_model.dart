import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'create_aluno_sheet_widget.dart' show CreateAlunoSheetWidget;
import 'package:flutter/material.dart';

class CreateAlunoSheetModel extends FlutterFlowModel<CreateAlunoSheetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for AlunoNomeField widget.
  FocusNode? alunoNomeFieldFocusNode;
  TextEditingController? alunoNomeFieldTextController;
  String? Function(BuildContext, String?)?
      alunoNomeFieldTextControllerValidator;
  // State field(s) for AlunoIdadeField widget.
  FocusNode? alunoIdadeFieldFocusNode;
  TextEditingController? alunoIdadeFieldTextController;
  String? Function(BuildContext, String?)?
      alunoIdadeFieldTextControllerValidator;
  // State field(s) for AlunoPesoField widget.
  FocusNode? alunoPesoFieldFocusNode;
  TextEditingController? alunoPesoFieldTextController;
  String? Function(BuildContext, String?)?
      alunoPesoFieldTextControllerValidator;
  // State field(s) for AlunoObjetivoField widget.
  FocusNode? alunoObjetivoFieldFocusNode;
  TextEditingController? alunoObjetivoFieldTextController;
  String? Function(BuildContext, String?)?
      alunoObjetivoFieldTextControllerValidator;
  // State field(s) for AlunoRestricoesField widget.
  FocusNode? alunoRestricoesFieldFocusNode;
  TextEditingController? alunoRestricoesFieldTextController;
  String? Function(BuildContext, String?)?
      alunoRestricoesFieldTextControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Button widget.
  AlunosRow? rows;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    alunoNomeFieldFocusNode?.dispose();
    alunoNomeFieldTextController?.dispose();

    alunoIdadeFieldFocusNode?.dispose();
    alunoIdadeFieldTextController?.dispose();

    alunoPesoFieldFocusNode?.dispose();
    alunoPesoFieldTextController?.dispose();

    alunoObjetivoFieldFocusNode?.dispose();
    alunoObjetivoFieldTextController?.dispose();

    alunoRestricoesFieldFocusNode?.dispose();
    alunoRestricoesFieldTextController?.dispose();
  }
}
