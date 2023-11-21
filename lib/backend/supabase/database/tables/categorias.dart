import '../database.dart';

class CategoriasTable extends SupabaseTable<CategoriasRow> {
  @override
  String get tableName => 'categorias';

  @override
  CategoriasRow createRow(Map<String, dynamic> data) => CategoriasRow(data);
}

class CategoriasRow extends SupabaseDataRow {
  CategoriasRow(super.data);

  @override
  SupabaseTable get table => CategoriasTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
