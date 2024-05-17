class yangName {
  final String name;
  final int number;

  yangName(this.name, this.number);

  void sayName() {
    print('저는 ${this.name} 입니다');
  }

  void sayNumber() {
    print('저는 ${this.name}이고 번호는 ${this.number} 입니다');
  }
}

class jangName extends yangName {
  jangName(
    String name,
    int number,
  ) : super(
          name,
          number,
        );

  void sayMale() {
    print('저는 남자입니다');
  }

  @override
  void sayNumber() {
    print('저는 18번 입니다');
  }
}

void main() {
  jangName jangName1 = jangName('장연준', 14);
  jangName1.sayName();
  jangName1.sayNumber(); //오버라이드가 우선 순위를 갖기 때문에 부모 메서드에 활당된 14가 아닌
  //오버라이드로 지정해준 18이 나온다
  jangName1.sayMale();
}
