import '../database.dart';

class TreinosTable extends SupabaseTable<TreinosRow> {
  @override
  String get tableName => 'treinos';

  @override
  TreinosRow createRow(Map<String, dynamic> data) => TreinosRow(data);
}

class TreinosRow extends SupabaseDataRow {
  TreinosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => TreinosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get planejamentoId => getField<String>('planejamento_id')!;
  set planejamentoId(String value) =>
      setField<String>('planejamento_id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String get diaSemana => getField<String>('dia_semana')!;
  set diaSemana(String value) => setField<String>('dia_semana', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
