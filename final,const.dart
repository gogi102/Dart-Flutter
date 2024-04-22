void main() {
  final String name1 = '양준석';
  const String name2 = '장연준';

  final DateTime now = DateTime.now();
  print(now);//DateTime 함수 같은 경우에는 코드가 실행되는 순간을 
					   //기준으로 시간을 구해주는 함수이기 때문에 
					   //const가 아닌 final로 써줘야한다.
}
