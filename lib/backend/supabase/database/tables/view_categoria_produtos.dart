import '../database.dart';

class ViewCategoriaProdutosTable
    extends SupabaseTable<ViewCategoriaProdutosRow> {
  @override
  String get tableName => 'view_categoria_produtos';

  @override
  ViewCategoriaProdutosRow createRow(Map<String, dynamic> data) =>
      ViewCategoriaProdutosRow(data);
}

class ViewCategoriaProdutosRow extends SupabaseDataRow {
  ViewCategoriaProdutosRow(super.data);

  @override
  SupabaseTable get table => ViewCategoriaProdutosTable();

  String? get nomeCategoria => getField<String>('nome_categoria');
  set nomeCategoria(String? value) => setField<String>('nome_categoria', value);

  int? get totalProdutos => getField<int>('total_produtos');
  set totalProdutos(int? value) => setField<int>('total_produtos', value);
}
