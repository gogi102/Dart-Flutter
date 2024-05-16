void main() {
  // const는 코드가 실행되지 않은 상태에서 값이 확정되는 빌드 타임 함수
  // final은 코드가 실행이 되어야 값을 알 수 있는 런타임 상수

  final String name1 = '양준석';
  const String name2 = '장연준';

  //name1 = '박시우'; 상수로 지정된 값은 값 수정이 안된다

  final DateTime now = DateTime.now();
  print(now); //DateTime 함수 같은 경우에는 코드가 실행되는 순간을
  //기준으로 시간을 구해주는 함수이기 때문에
  //const가 아닌 final로 써줘야한다.
}
