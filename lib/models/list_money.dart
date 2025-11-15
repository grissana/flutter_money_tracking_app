// ignore_for_file: non_constant_identifier_names, camel_case_types

class list_money {
  final String? id;
  final DateTime? created_at;
  final String? title_io;
  final int? money_io;
  final int? type_io;

  list_money({
    this.id,
    this.created_at,
    this.title_io,
    this.money_io,
    this.type_io,
  });

  factory list_money.fromJson(Map<String, dynamic> Map) {
    return list_money(
      id: Map['id'] as String,
      created_at: DateTime.parse(Map['created_at'] as String),
      title_io: Map['title_io'] as String,
      money_io: Map['money_io'] as int,
      type_io: Map['type_io'] as int,
    );
  }

  Map<String, dynamic> toMapForAdd() {
    return {
      'title_io': title_io,
      // 'todo_detail': todo_detail,
    };
  }

  Map<String, dynamic> toMapForUpdate() {
    return {
      'title_io': title_io,
      // 'todo_detail': todo_detail,
      'updated_at': DateTime.now().toIso8601String(),
    };
  }
}
