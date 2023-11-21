import '../database.dart';

class FeiranteTable extends SupabaseTable<FeiranteRow> {
  @override
  String get tableName => 'feirante';

  @override
  FeiranteRow createRow(Map<String, dynamic> data) => FeiranteRow(data);
}

class FeiranteRow extends SupabaseDataRow {
  FeiranteRow(super.data);

  @override
  SupabaseTable get table => FeiranteTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get telefone => getField<String>('telefone');
  set telefone(String? value) => setField<String>('telefone', value);

  String? get email => getField<String>('email');
  set email(String? value) => setField<String>('email', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
