import '../database.dart';

class RelaoriofeiranteTable extends SupabaseTable<RelaoriofeiranteRow> {
  @override
  String get tableName => 'relaoriofeirante';

  @override
  RelaoriofeiranteRow createRow(Map<String, dynamic> data) =>
      RelaoriofeiranteRow(data);
}

class RelaoriofeiranteRow extends SupabaseDataRow {
  RelaoriofeiranteRow(super.data);

  @override
  SupabaseTable get table => RelaoriofeiranteTable();

  int? get idFeiras => getField<int>('id_feiras');
  set idFeiras(int? value) => setField<int>('id_feiras', value);

  String? get nomeFeirante => getField<String>('nome_feirante');
  set nomeFeirante(String? value) => setField<String>('nome_feirante', value);

  String? get nomeFeira => getField<String>('nome_feira');
  set nomeFeira(String? value) => setField<String>('nome_feira', value);

  String? get nomeBanca => getField<String>('nome_banca');
  set nomeBanca(String? value) => setField<String>('nome_banca', value);

  String? get fotoBanca => getField<String>('foto_banca');
  set fotoBanca(String? value) => setField<String>('foto_banca', value);

  String? get diaSemana => getField<String>('dia_semana');
  set diaSemana(String? value) => setField<String>('dia_semana', value);
}
