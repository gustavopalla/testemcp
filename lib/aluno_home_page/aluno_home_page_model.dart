import '/components/treino_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'aluno_home_page_widget.dart' show AlunoHomePageWidget;
import 'package:flutter/material.dart';

class AlunoHomePageModel extends FlutterFlowModel<AlunoHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for TreinoCard.
  late TreinoCardModel treinoCardModel1;
  // Model for TreinoCard.
  late TreinoCardModel treinoCardModel2;

  @override
  void initState(BuildContext context) {
    treinoCardModel1 = createModel(context, () => TreinoCardModel());
    treinoCardModel2 = createModel(context, () => TreinoCardModel());
  }

  @override
  void dispose() {
    treinoCardModel1.dispose();
    treinoCardModel2.dispose();
  }
}
