void main() {
  //타입 뒤에 ?를 명시해야 null값을 가질 수 있다.
  double? number1 = null;

  //타입 뒤에 ?를 명시하지 않아 에러가 난다.
  //double number2 = null;

  double? number; // 자동으로 null값을 지정함
  print(number);

  number ??= 3; // ??= 사용을 할 경우 기존의 값이 null값일 경우 저장함
  //(기존이 null이였기 때문에 3 저장됨)
  print(number);

  number ??= 4; // number는 null이 아닌 3이 할당되었기 때문에 그냥 3이 유지된다
  print(number);

  number ??= null; // number는 null이 아닌 3이 할당되었기 때문에 그냥 3이 유지된다
  print(number);
}
