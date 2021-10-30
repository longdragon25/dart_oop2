import 'person.dart';

class Student extends Person {
  int? _mark;
  String? _grade;

  Student({id, name}) : super(id: id, name: name);

  void setMark({int? mark}) {
    this._mark = mark;
  }

  void setGrade({String? grade}) {
    this._grade = grade;
  }

  int getMark() => this._mark!;
  String getGrade() => this._grade!;

  @override
  void input() {
    // TODO: implement input
    super.input();
  }

  @override
  void display() {
    int age = super.getAge();
    // TODO: implement display
    print("Hoc sinh $name $age tuoi hoc lop $_grade co so diem la: $_mark");
  }
}
