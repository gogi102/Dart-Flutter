void main() {
  List<String> food = ['햄버거', '치킨', '피자'];
  print(food);
  print(food[0]);
  print(food[2]);
  print(food.length);
  food[2] = '짜장면'; // food 리스트의 2번째 값을 짜장면으로 바꾼다
  print(food);

  food.add('콜라'); //add() 함수는 리스트의 맨 마지막 값에 value값을 추가하는 함수이다.
  print(food);

  final newList1 = food.where((name) => name == '피자' || name == '콜라');
  //이름이 피자 이거나 콜라 인 값을 찾는것 
  print(newList1);
}
