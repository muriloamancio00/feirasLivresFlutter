import '../database.dart';

class ViewRelatoriosTable extends SupabaseTable<ViewRelatoriosRow> {
  @override
  String get tableName => 'view_relatorios';

  @override
  ViewRelatoriosRow createRow(Map<String, dynamic> data) =>
      ViewRelatoriosRow(data);
}

class ViewRelatoriosRow extends SupabaseDataRow {
  ViewRelatoriosRow(super.data);

  @override
  SupabaseTable get table => ViewRelatoriosTable();

  String? get titulo => getField<String>('titulo');
  set titulo(String? value) => setField<String>('titulo', value);

  int? get total => getField<int>('total');
  set total(int? value) => setField<int>('total', value);
}
