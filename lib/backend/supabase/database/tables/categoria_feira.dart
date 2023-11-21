import '../database.dart';

class CategoriaFeiraTable extends SupabaseTable<CategoriaFeiraRow> {
  @override
  String get tableName => 'categoria_feira';

  @override
  CategoriaFeiraRow createRow(Map<String, dynamic> data) =>
      CategoriaFeiraRow(data);
}

class CategoriaFeiraRow extends SupabaseDataRow {
  CategoriaFeiraRow(super.data);

  @override
  SupabaseTable get table => CategoriaFeiraTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  int get feiraId => getField<int>('feira_id')!;
  set feiraId(int value) => setField<int>('feira_id', value);
}
