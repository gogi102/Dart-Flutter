class Name {
  String _name = '양준석';

  String get name {
    return this._name;
  }

  set name(String name) {
    this._name = name;
  }
}

void main() {
  Name student = Name();
  student.name = '장연준';
  print(student.name);
}
