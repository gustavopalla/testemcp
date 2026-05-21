import '../database.dart';

class ExerciciosTable extends SupabaseTable<ExerciciosRow> {
  @override
  String get tableName => 'exercicios';

  @override
  ExerciciosRow createRow(Map<String, dynamic> data) => ExerciciosRow(data);
}

class ExerciciosRow extends SupabaseDataRow {
  ExerciciosRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ExerciciosTable();

  String? get id => getField<String>('id');
  set id(String? value) => setField<String>('id', value);

  String get treinoId => getField<String>('treino_id')!;
  set treinoId(String value) => setField<String>('treino_id', value);

  String get nome => getField<String>('nome')!;
  set nome(String value) => setField<String>('nome', value);

  String? get grupoMuscular => getField<String>('grupo_muscular');
  set grupoMuscular(String? value) => setField<String>('grupo_muscular', value);

  int? get series => getField<int>('series');
  set series(int? value) => setField<int>('series', value);

  int? get reps => getField<int>('reps');
  set reps(int? value) => setField<int>('reps', value);

  int? get descansoSegundos => getField<int>('descanso_segundos');
  set descansoSegundos(int? value) => setField<int>('descanso_segundos', value);

  int? get ordem => getField<int>('ordem');
  set ordem(int? value) => setField<int>('ordem', value);

  DateTime? get createdAt => getField<DateTime>('created_at');
  set createdAt(DateTime? value) => setField<DateTime>('created_at', value);
}
