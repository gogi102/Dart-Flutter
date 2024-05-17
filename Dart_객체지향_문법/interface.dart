class Student {
  final String name;
  final int number;

  Student(this.name, this.number);

  void sayName() {
    print('저는 ${this.name} 입니다');
  }

  void sayNumber() {
    print("저는 ${this.number}번 입니다");
  }
}

class maleStudent implements Student { //implements 키워드를 사용하여 interface를 지정해줄 수 있다
  final String name;
  final int number;

  maleStudent(this.name, this.number);

  void sayName() {
    print("저는 남학생 ${this.name}입니다");
  }

  void sayNumber() {
    print("저는 ${this.number}번 입니다");
  }
}

void main() {
  maleStudent male = maleStudent("양준석", 13);

  male.sayName();
  male.sayNumber();
}
