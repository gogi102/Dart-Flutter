enum Status {
  approved,
  pending,
  rejected,
}

void main() {
  Status status = Status.approved;

  switch (status) {
    case Status.approved:
      print("승인 상태");
      break;

    case Status.pending:
      print("대기 상태");
      break;

    default:
      print("알수없음"); //default 없어서는 안된다
  }
}
