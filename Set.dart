void main() {
  Set<String> color = {'red', 'blue', 'orange', ' black', 'yellow', 'yellow'};

  print(color);
  print(color.contains('red')); // red를 포함하고 있는가?
  print(color.toList()); //Set을 List로 변환하여 출력

  List<String> months = ['Jan', 'Apr', 'Jul', 'Sep', 'Dec'];
  print(Set.from(months)); //List를 Set으로 변환하여 출력
}
