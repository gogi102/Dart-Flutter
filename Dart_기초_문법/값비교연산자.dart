void main() {
  int number = 1;

  print(number is int); //true
  print(number is String); //false
  print(number is! int); //false
  print(number is! String); //true
}
