void main() {
  try {
    final String name = '양준석';

    throw Exception('이름이 잘못됐습니다'); //throw키워드로 고의적을 오류 발생
    //오류가 없을경우 그냥 이름 출력
    print(name);
  } catch (e) {
    print(e);
  }
}
