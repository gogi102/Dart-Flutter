void main() {
  //익명 함수에서 { }를 빼고 ⇒ 기호를 추가한 것이 람다 함수이다.
  //일회성이 높은 로직을 작성할 때 주로 사용한다
  List<int> numbers = [1, 2, 3, 4, 5];

  final allMembers = numbers.reduce((value, element) => value + element);
  //reduce로 리스트에 value, element값을 추출하여 더해줌
  print(allMembers); //출력값 15
}
