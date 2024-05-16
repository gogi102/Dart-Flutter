class Student211 {
  String name = "양준석";

  void SayName() {
    print('저는 ${this.name}입니다');
    print('저는 ${name}입니다');
  }
}

void main() {
  Student211 student211 = Student211();

  student211.SayName();
}
