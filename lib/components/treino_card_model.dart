import '/components/exercicio_row_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'treino_card_widget.dart' show TreinoCardWidget;
import 'package:flutter/material.dart';

class TreinoCardModel extends FlutterFlowModel<TreinoCardWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ExercicioRow.
  late ExercicioRowModel exercicioRowModel1;
  // Model for ExercicioRow.
  late ExercicioRowModel exercicioRowModel2;

  @override
  void initState(BuildContext context) {
    exercicioRowModel1 = createModel(context, () => ExercicioRowModel());
    exercicioRowModel2 = createModel(context, () => ExercicioRowModel());
  }

  @override
  void dispose() {
    exercicioRowModel1.dispose();
    exercicioRowModel2.dispose();
  }
}
