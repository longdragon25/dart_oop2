import 'package:dart_oop2/dart_oop2.dart' as dart_oop2;

import 'student.dart';

void main(List<String> arguments) {
  Student sv1 = Student(id: "1", name: "Long");
  sv1.setAge(age: 10);
  sv1.setGrade(grade: "5A");
  sv1.setMark(mark: 8);
  sv1.display();

  Student sv2 = Student(id: "2", name: "Huy");
  sv2.setAge(age: 10);
  sv2.setGrade(grade: "5B");
  sv2.setMark(mark: 9);
  sv2.display();

  List<Student> studentList = [sv1, sv2];
  findDTBMax(studentList: studentList);
}

findDTBMax({required List<Student> studentList}) {
  int dtbMax = 0;
  Student? dtbMaxStudent;

  for (Student student in studentList) {
    if (student.getMark() > dtbMax) {
      dtbMax = student.getMark();
      dtbMaxStudent = student;
    }
  }
  print("Hoc sinh co diem cao nhat la: " + dtbMaxStudent!.name.toString());
}
