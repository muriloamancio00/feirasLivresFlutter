import '../database.dart';

class ViewCrudBancaTable extends SupabaseTable<ViewCrudBancaRow> {
  @override
  String get tableName => 'view_crud_banca';

  @override
  ViewCrudBancaRow createRow(Map<String, dynamic> data) =>
      ViewCrudBancaRow(data);
}

class ViewCrudBancaRow extends SupabaseDataRow {
  ViewCrudBancaRow(super.data);

  @override
  SupabaseTable get table => ViewCrudBancaTable();

  int? get idBanca => getField<int>('id_banca');
  set idBanca(int? value) => setField<int>('id_banca', value);

  String? get nomeBanca => getField<String>('nome_banca');
  set nomeBanca(String? value) => setField<String>('nome_banca', value);

  String? get fotoBanca => getField<String>('foto_banca');
  set fotoBanca(String? value) => setField<String>('foto_banca', value);

  String? get nomeFeira => getField<String>('nome_feira');
  set nomeFeira(String? value) => setField<String>('nome_feira', value);

  int? get idFeirante => getField<int>('id_feirante');
  set idFeirante(int? value) => setField<int>('id_feirante', value);

  String? get nomrFeirante => getField<String>('nomr_feirante');
  set nomrFeirante(String? value) => setField<String>('nomr_feirante', value);
}
