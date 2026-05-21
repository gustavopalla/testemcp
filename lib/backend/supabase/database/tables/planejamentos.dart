import '../database.dart';

class PlanejamentosTable extends SupabaseTable<PlanejamentosRow> {
  @override
  String get tableName => 'planejamentos';

  @override
  PlanejamentosRow createRow(Map<String, dynamic> data) =>
      PlanejamentosRow(data);
}

class PlanejamentosRow extends SupabaseDataRow {
  PlanejamentosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PlanejamentosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get alunoId => getField<String>('aluno_id')!;
  set alunoId(String value) => setField<String>('aluno_id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
