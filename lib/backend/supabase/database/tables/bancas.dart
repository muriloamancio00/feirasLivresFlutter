import '../database.dart';

class BancasTable extends SupabaseTable<BancasRow> {
  @override
  String get tableName => 'bancas';

  @override
  BancasRow createRow(Map<String, dynamic> data) => BancasRow(data);
}

class BancasRow extends SupabaseDataRow {
  BancasRow(super.data);

  @override
  SupabaseTable get table => BancasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  int? get feiranteId => getField<int>('feirante_id');
  set feiranteId(int? value) => setField<int>('feirante_id', value);

  int? get feiraId => getField<int>('feira_id');
  set feiraId(int? value) => setField<int>('feira_id', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
