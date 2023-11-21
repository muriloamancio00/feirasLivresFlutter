import '../database.dart';

class ProdutosTable extends SupabaseTable<ProdutosRow> {
  @override
  String get tableName => 'produtos';

  @override
  ProdutosRow createRow(Map<String, dynamic> data) => ProdutosRow(data);
}

class ProdutosRow extends SupabaseDataRow {
  ProdutosRow(super.data);

  @override
  SupabaseTable get table => ProdutosTable();

  int get id => getField<int>('id')!;
  set id(int value) => setField<int>('id', value);

  DateTime get createdAt => getField<DateTime>('created_at')!;
  set createdAt(DateTime value) => setField<DateTime>('created_at', value);

  String? get nome => getField<String>('nome');
  set nome(String? value) => setField<String>('nome', value);

  double? get preco => getField<double>('preco');
  set preco(double? value) => setField<double>('preco', value);

  int? get categoriaId => getField<int>('categoria_id');
  set categoriaId(int? value) => setField<int>('categoria_id', value);

  String? get foto => getField<String>('foto');
  set foto(String? value) => setField<String>('foto', value);
}
