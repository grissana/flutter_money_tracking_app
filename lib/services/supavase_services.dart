//เอาไว้เขียนโค้ดทำงานกับ Supabase (CRUD, อ่านข้อมูล, เพิ่มข้อมูล, แก้ไขข้อมูล, ลบข้อมูล)

// ignore_for_file: avoid_print, non_constant_identifier_names

// import 'package:flutter/material.dart';
// import 'package:flutter_todo_iot_app/models/todo.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseServices {
  //สร้าง Object ของ Supabase เพื่อทำงานกับ Supabase
  final SupabaseClient supabase = Supabase.instance.client;
  // สร้างตัวแปรเก็บชื่อตารางที่จะทำงานกับ supabase
  final String tableName = 'money_tracking_tb';
  //ดึงข้อมูลทั้งหมด
  // Future<List<list_money>> getTodo(context) async {
  //   try {
  //     final data = await supabase
  //         .from(tableName)
  //         .select('+')
  //         .order('created_at', ascending: false);

  //     final List<list_money> list_money =
  //         data.map((e) => list_money.fromJson(e)).toList();
  //     // ส่งค่าผลการดึงข้อมูลไว้ไปใช้งาน เรียกใช้ grtodo.dart
  //     return list_money;
  //   } catch (ex) {
  //     ScaffoldMessenger.of(context).showSnackBar(
  //       SnackBar(
  //         content: Text(
  //           'พบปัญหาในการดึงข้อมูล: $ex',
  //           style: TextStyle(
  //             color: Colors.red,
  //           ),
  //         ),
  //       ),
  //     );
  //     throw Exception('พบปัญหาในการดึงข้อมูล: $ex');
  //   }
  // }

  //เพิ่มข้อมูล
  Future<bool> addTodo(list_money) async {
    //แปลงข้อมูลจากแอพ เพื่อส่งไปยัง Supabase
    final todoMap = list_money.toMapForAdd();
    //ส่งข้อมูลไปยัง Supabase เพื่อบันทึก
    try {
      // บันทึก / เพิ่มข้อมูล
      await supabase.from('todo_tb').insert(todoMap);
      return true;
    } catch (ex) {
      print('พบปัญหาในการบันทึกข้อมูล: $ex');
      return false;
    }
  }

  //แก้ไขข้อมูล
  Future<bool> updateTodo(list_money) async {
    //แปลงข้อมูลจากแอพ เพื่อส่งไปยัง Supabase
    final todoMap = list_money.toMapForUpdate();
    //ส่งข้อมูลไปยัง Supabase เพื่อแก้ไข
    try {
      // บันทึก / เพิ่มข้อมูล
      await supabase.from('todo_tb').update(todoMap).eq('id', list_money.id!);
      return true;
    } catch (ex) {
      print('พบปัญหาในการบันทึกข้อมูล: $ex');
      return false;
    }
  }

  //ลบข้อมูล
  Future<bool> deleteTodo(list_money) async {
    try {
      await supabase.from('todo_tb').delete().eq('id', list_money.id!);
      return true;
    } catch (ex) {
      print('พบปัญหาในการลบข้อมูล: $ex');
      return false;
    }
  }
}
