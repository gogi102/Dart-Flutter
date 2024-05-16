class ClassName {
  final String name;
  final int studentCount;

  ClassName(String name, int studentCount)
      : this.name = name,
        this.studentCount = studentCount;

  ClassName.fromMap(Map<String, dynamic> map)
      : this.name = map['name'],
        this.studentCount = map['studentCount'];

  void sayName() {
    print('저는 ${this.name}입니다. ${this.name} 학생 수는 ${this.studentCount}명입니다.');
  }
}

void main() {
  ClassName className = ClassName('2학년 11반', 22);
  className.sayName();

  ClassName className1 = ClassName.fromMap({
    'name': '2학년 11반',
    'studentCount': 22,
  });
  className1.sayName();
}
