/*
{class 자식 클래스 extends 부모 클래스} 순서로 지정하면 된다
자식 클래스는 부모 클래스의 모든 기능을 상속받는다
this와 달리 super는 상속한 부모 클래스를 지칭한다
*/

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
}

void main() {
  jangName jangName1 = jangName('장연준', 18);
  jangName1.sayName();
  jangName1.sayNumber();
  jangName1.sayMale();
}
