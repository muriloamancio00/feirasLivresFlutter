import '../database.dart';

class ViewFeiranteFeiraTable extends SupabaseTable<ViewFeiranteFeiraRow> {
  @override
  String get tableName => 'view_feirante_feira';

  @override
  ViewFeiranteFeiraRow createRow(Map<String, dynamic> data) =>
      ViewFeiranteFeiraRow(data);
}

class ViewFeiranteFeiraRow extends SupabaseDataRow {
  ViewFeiranteFeiraRow(super.data);

  @override
  SupabaseTable get table => ViewFeiranteFeiraTable();

  int? get idFeirante => getField<int>('id_feirante');
  set idFeirante(int? value) => setField<int>('id_feirante', value);

  String? get nomeFeirante => getField<String>('nome_feirante');
  set nomeFeirante(String? value) => setField<String>('nome_feirante', value);

  int? get idBanca => getField<int>('id_banca');
  set idBanca(int? value) => setField<int>('id_banca', value);

  String? get nomeBanca => getField<String>('nome_banca');
  set nomeBanca(String? value) => setField<String>('nome_banca', value);

  int? get idFeira => getField<int>('id_feira');
  set idFeira(int? value) => setField<int>('id_feira', value);

  String? get nomeFeira => getField<String>('nome_feira');
  set nomeFeira(String? value) => setField<String>('nome_feira', value);
}
