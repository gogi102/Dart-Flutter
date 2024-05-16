class Name {
  String _name;

  Name(this._name);
}

void main() {
  Name student = Name('양준석');
  // 같은 파일에서는 _name 변수에 접근할 수 있지만
  // 다른 파일에서는 _name 변수에 접근할 수 없다
  print(student);
}
