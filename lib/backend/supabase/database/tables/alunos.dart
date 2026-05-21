import '../database.dart';

class AlunosTable extends SupabaseTable<AlunosRow> {
  @override
  String get tableName => 'alunos';

  @override
  AlunosRow createRow(Map<String, dynamic> data) => AlunosRow(data);
}

class AlunosRow extends SupabaseDataRow {
  AlunosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AlunosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get professorId => getField<String>('professor_id')!;
  set professorId(String value) => setField<String>('professor_id', value);

  String? get alunoProfileId => getField<String>('aluno_profile_id');
  set alunoProfileId(String? value) =>
      setField<String>('aluno_profile_id', value);

  String get name => getField<String>('name')!;
  set name(String value) => setField<String>('name', value);

  int? get idade => getField<int>('idade');
  set idade(int? value) => setField<int>('idade', value);

  double? get peso => getField<double>('peso');
  set peso(double? value) => setField<double>('peso', value);

  String? get objetivo => getField<String>('objetivo');
  set objetivo(String? value) => setField<String>('objetivo', value);

  String? get restricoes => getField<String>('restricoes');
  set restricoes(String? value) => setField<String>('restricoes', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
