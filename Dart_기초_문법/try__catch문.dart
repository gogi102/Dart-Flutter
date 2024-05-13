void main() {
  try {
    final String name = '양준석';

    throw Exception('이름이 잘못됐습니다');

    print(name);
  } catch (e) {
    print(e);
  }
}
