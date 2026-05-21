import '/components/aluno_list_item_widget.dart';
import '/components/empty_state_widget.dart';
import '/components/planejamento_tab_widget.dart';
import '/components/treino_card_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/index.dart';
import 'professor_home_page_widget.dart' show ProfessorHomePageWidget;
import 'package:flutter/material.dart';

class ProfessorHomePageModel extends FlutterFlowModel<ProfessorHomePageWidget> {
  ///  State fields for stateful widgets in this page.

  // Model for AlunoListItem.
  late AlunoListItemModel alunoListItemModel1;
  // Model for AlunoListItem.
  late AlunoListItemModel alunoListItemModel2;
  // Model for EmptyState.
  late EmptyStateModel emptyStateModel;
  // Model for PlanejamentoTab.
  late PlanejamentoTabModel planejamentoTabModel;
  // Model for TreinoCard.
  late TreinoCardModel treinoCardModel1;
  // Model for TreinoCard.
  late TreinoCardModel treinoCardModel2;

  @override
  void initState(BuildContext context) {
    alunoListItemModel1 = createModel(context, () => AlunoListItemModel());
    alunoListItemModel2 = createModel(context, () => AlunoListItemModel());
    emptyStateModel = createModel(context, () => EmptyStateModel());
    planejamentoTabModel = createModel(context, () => PlanejamentoTabModel());
    treinoCardModel1 = createModel(context, () => TreinoCardModel());
    treinoCardModel2 = createModel(context, () => TreinoCardModel());
  }

  @override
  void dispose() {
    alunoListItemModel1.dispose();
    alunoListItemModel2.dispose();
    emptyStateModel.dispose();
    planejamentoTabModel.dispose();
    treinoCardModel1.dispose();
    treinoCardModel2.dispose();
  }
}
