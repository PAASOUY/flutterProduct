void main(){
  dynamic student_list = [
    "Smey",
    "Dara",
    "Rithy",
    "Thida",
    "Dara",
    "Rithy",
    "Dara"
  ];
  Set u_student_name = student_list.toSet();
  dynamic count_name = [];
  for (var u_name in u_student_name) {
    int count = 0;
    String name = u_name;

    for (var student in student_list) {
      if (u_name == student) {
        count++;
      }
    }
    count_name.add(
        {
          'name': u_name,
          'count': count,
        }
    );
  }
  print(count_name);

}