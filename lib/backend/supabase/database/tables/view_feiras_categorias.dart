import '../database.dart';

class ViewFeirasCategoriasTable extends SupabaseTable<ViewFeirasCategoriasRow> {
  @override
  String get tableName => 'view_feiras_categorias';

  @override
  ViewFeirasCategoriasRow createRow(Map<String, dynamic> data) =>
      ViewFeirasCategoriasRow(data);
}

class ViewFeirasCategoriasRow extends SupabaseDataRow {
  ViewFeirasCategoriasRow(super.data);

  @override
  SupabaseTable get table => ViewFeirasCategoriasTable();

  String? get nomeFeira => getField<String>('nome_feira');
  set nomeFeira(String? value) => setField<String>('nome_feira', value);

  int? get idFeira => getField<int>('id_feira');
  set idFeira(int? value) => setField<int>('id_feira', value);

  String? get fotoFeira => getField<String>('foto_feira');
  set fotoFeira(String? value) => setField<String>('foto_feira', value);

  int? get totalBancas => getField<int>('total_bancas');
  set totalBancas(int? value) => setField<int>('total_bancas', value);
}
