class Student211{
  final String name;

  Student211(String name) : this.name = name;

void SayName(){
  print('저는 ${this.name}입니다');
  }
}
void main(){
  Student211 student211 = Student211('장연준');
  Student211 student2112 = Student211('양준석');

  student211.SayName();
  student2112.SayName();
}
