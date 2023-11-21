import '../database.dart';

class FeirasTable extends SupabaseTable<FeirasRow> {
  @override
  String get tableName => 'feiras';

  @override
  FeirasRow createRow(Map<String, dynamic> data) => FeirasRow(data);
}

class FeirasRow extends SupabaseDataRow {
  FeirasRow(super.data);

  @override
  SupabaseTable get table => FeirasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get diaSemana => getField<String>('dia_semana');
  set diaSemana(String? value) => setField<String>('dia_semana', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
