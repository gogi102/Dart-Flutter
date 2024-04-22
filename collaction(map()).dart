void main() {
  List<String> food = ['햄버거', '치킨', '피자'];
  final newList2 = food.map((name) => '맛있는 $name');
  print(newList2);
}
