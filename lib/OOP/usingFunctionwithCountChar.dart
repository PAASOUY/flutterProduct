import 'dart:io';
  Map<String, int> countchar({required String text}) {
    final NospaceText = text.toLowerCase().replaceAll(' ', '');
    final Count = <String, int>{};
    for (var char in NospaceText.split('')) {
      Count[char] = Count.containsKey(char) ? Count[char]! + 1 : 1;
      // if (Count.containsKey(char)) {
      //   Count[char] = Count[char]! + 1; // Increment the count by 1
      // } else {
      //   Count[char] = 1; // Initialize the count to 1
      // }
    }
    return Count;
  }
  void main() {
    stdout.write("Please Enter String: ");
    String? input = stdin.readLineSync()!;
    final result = countchar(text:input);
    print("***************");
    //map has String jea Key and int jea value
    result.forEach((char, count) {
      print("$char: $count");
    });
    print("***************");
  }

//   stdout.write("Enter String : ");
//   String? str =stdin.readLineSync()!.toLowerCase();
//   List<String> strArray = str.split('').where((char)=>char!=' ').toList();
//   Set u_student_name = strArray.toSet();
//   dynamic count_name = [];
//   for (var u_name in u_student_name) {
//     int count = 0;
//     String name = u_name;
//
//     for (var student in strArray) {
//       if (u_name == student) {
//         count++;
//       }
//
//     }
//     count_name.add(
//         {
//           u_name: count,
//         }
//     );
//   }
//   print(count_name);
// }
