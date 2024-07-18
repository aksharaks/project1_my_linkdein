// ignore: depend_on_referenced_packages
import 'dart:convert';

import 'package:flutter_application_1/student_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> storingBoolData(bool isUsedLogedIn) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.setBool("isUsedLogedIn", isUsedLogedIn);
}

Future<bool> gettingBoolData() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  bool? data = prefs.getBool("isUsedLogedIn");
  if (data == null) {
    data = false;
  }

  return data;
}

void deletingString() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.remove("data");
}
// to add student
Future<void> addStudent(StudentModel studentModel) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final List<String> students = prefs.getStringList("studentList") ?? [];

// to convert string to list
  final json = jsonEncode(studentModel.toJson());

  students.add(json);
  await prefs.setStringList("studentList", students);
}

Future<StudentModel?> getStudent(StudentModel studentModel)async{
   final SharedPreferences prefs = await SharedPreferences.getInstance();
  String? jsonString = prefs.getString("studentList");
  if (jsonString != null){
Map<String, dynamic> jsonMap = jsonDecode(jsonString);

return StudentModel.fromJson(jsonMap);
  }
  return null;
}
