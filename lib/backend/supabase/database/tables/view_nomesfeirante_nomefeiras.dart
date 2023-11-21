import '../database.dart';

class ViewNomesfeiranteNomefeirasTable
    extends SupabaseTable<ViewNomesfeiranteNomefeirasRow> {
  @override
  String get tableName => 'view_nomesfeirante_nomefeiras';

  @override
  ViewNomesfeiranteNomefeirasRow createRow(Map<String, dynamic> data) =>
      ViewNomesfeiranteNomefeirasRow(data);
}

class ViewNomesfeiranteNomefeirasRow extends SupabaseDataRow {
  ViewNomesfeiranteNomefeirasRow(super.data);

  @override
  SupabaseTable get table => ViewNomesfeiranteNomefeirasTable();

  int? get idFeirante => getField<int>('id_feirante');
  set idFeirante(int? value) => setField<int>('id_feirante', value);

  String? get nomeFeirante => getField<String>('nome_feirante');
  set nomeFeirante(String? value) => setField<String>('nome_feirante', value);

  int? get idFeira => getField<int>('id_feira');
  set idFeira(int? value) => setField<int>('id_feira', value);

  String? get nomeFeira => getField<String>('nome_feira');
  set nomeFeira(String? value) => setField<String>('nome_feira', value);
}
