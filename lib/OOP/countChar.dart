import 'dart:io';

void main() {

  stdout.write("Enter String : ");
  String? str =stdin.readLineSync()!.toLowerCase();
  List<String> strArray = str.split('').where((char)=>char!=' ').toList();
  Set u_student_name = strArray.toSet();
  dynamic count_name = [];
  for (var u_name in u_student_name) {
    int count = 0;
    String name = u_name;

    for (var student in strArray) {
      if (u_name == student) {
        count++;
      }

    }
      count_name.add(
          {
            u_name: count,
          }
      );
  }
  print(count_name);
}
