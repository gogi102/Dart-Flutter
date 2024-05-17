/*
함수를 사용하면 한 번만 작성하고 여러 곳에서 재활용이 가능하다.

다트 함수에서 매개변수를 지정하는 방법으로 순서가 고정된 매개변수

(포지셔널 파라미터, 위치 매개변수)와

이름이 있는 매개변수(네임드 파라미터, 명명된 매개변수)가 있다

네임드 파라미터를 지정하려면 {}와 required 키워드를 사용해야 한다.
*/

//포지셔널 파라미터(기본값 지정)
addNumber(int a, [int b = 2]) {
  return a + b;
}

//네임드 파라미터
int addNumber1({
  required int a,
  required int b,
}) {
  return a + b;
}

// 이렇게 섞어 쓰기도 가능
int addNumberMix(int a, {required int b, int c = 4}) {
  return a + b + c;
}

void main() {
  print(addNumber(2)); // 포지셔널 값 지정
  print(addNumber1(a: 2, b: 3)); // 네임드 값 지정
  print(addNumberMix(1, b: 2)); // 섞어 쓰기 값 지정
}
