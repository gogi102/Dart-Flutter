void main(){
  List<int> numbers = [1,2,3,4,5];

  final allMembers = numbers.reduce((value, element) => value + element);
	//reduce로 리스트에 value, element값을 추출하여 더해줌
  print(allMembers);//출력값 15
}
