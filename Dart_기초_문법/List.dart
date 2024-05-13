void main() {
  List<String> food = ['햄버거', '치킨', '피자'];
  print(food);
  print(food[0]);
  print(food[2]);
  print(food.length);
  food[2] = '짜장면'; // food 리스트의 2번째 값을 짜장면으로 바꾼다
  print(food);

  food.add('콜라'); //add() 함수는 리스트의 맨 마지막 값에
  //value값을 추가하는 함수이다.
  print(food);

  final newList2 = food.map((name) => '맛있는 $name');
  print(newList2); // map함수를 사용하여 출력문에 맛있는 추가

  final newList1 = food.where((name) => name == '피자' || name == '콜라');
  //where문
  print(newList1);
}
