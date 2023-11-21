import '../database.dart';

class ViewProdutoCategoriaTable extends SupabaseTable<ViewProdutoCategoriaRow> {
  @override
  String get tableName => 'view_produto_categoria';

  @override
  ViewProdutoCategoriaRow createRow(Map<String, dynamic> data) =>
      ViewProdutoCategoriaRow(data);
}

class ViewProdutoCategoriaRow extends SupabaseDataRow {
  ViewProdutoCategoriaRow(super.data);

  @override
  SupabaseTable get table => ViewProdutoCategoriaTable();

  int? get idProduto => getField<int>('id_produto');
  set idProduto(int? value) => setField<int>('id_produto', value);

  int? get idCategoria => getField<int>('id_categoria');
  set idCategoria(int? value) => setField<int>('id_categoria', value);

  String? get nomeProduto => getField<String>('nome_produto');
  set nomeProduto(String? value) => setField<String>('nome_produto', value);

  String? get nomeCategoria => getField<String>('nome_categoria');
  set nomeCategoria(String? value) => setField<String>('nome_categoria', value);

  double? get precoProduto => getField<double>('preco_produto');
  set precoProduto(double? value) => setField<double>('preco_produto', value);

  String? get fotoProduto => getField<String>('foto_produto');
  set fotoProduto(String? value) => setField<String>('foto_produto', value);
}
