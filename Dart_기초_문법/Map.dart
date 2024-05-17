void main() {
  Map<String, String> first_name = {
    'Kim': '김유빈',
    'Jang': '장연준',
    'Yang': '양준석',
    'Park': '박시우'
  };
  print(first_name['Kim']);
  print(first_name['Jang']);

  print(first_name.values); //모든 Value 값 출력
  print(first_name.keys); //모든 Key 값 출력
}
