import 'dart:io';

void main(){
  List<Map<String, dynamic>> products = [];
  while (true) {
    stdout.write("Enter Product Name : ");
    String? pn =stdin.readLineSync()!;
    stdout.write("Enter Product QTY : ");
    int? qty =int.parse(stdin.readLineSync()!);
    stdout.write("Enter Product Price : ");
    double? pp =double.parse(stdin.readLineSync()!);
    stdout.write("Enter Product Discount(%) : ");
    int? dis = int.parse(stdin.readLineSync()!);

    double totalPrice = (pp * qty) * (1 - dis / 100);

    Map<String, dynamic> productInfo = {
      'ID': products.length + 1,
      'Name': pn,
      'Quantity': qty,
      'Price': pp,
      'Discount': dis,
      'Total Price': totalPrice,
    };
    products.add(productInfo);
    print("Product Name: $pn");
    print("Product Quantity: $qty");
    print("Product Price: $pp");
    print("Product Discount: $dis%");
    stdout.write("Enter more Product (Y/N): ");
    String? op = stdin.readLineSync();
    if (op != null && op.toUpperCase() != 'Y') {
      break;
    }
  }
  print("\nProduct Details:");
  print('==============================================');
  print('ID\t\tName\t\t\tQTY\t\tPrice\t\tDiscount(%)\t\tSub Total');
  double grandtotal = 0;
  int totalGrandRiel = 0;

  for (var product in products) {
    print('${product['ID']}\t\t${product['Name']}\t\t\t\t${product['Quantity']}\t\t${product['Price']}\t\t\t${product['Discount']}\t\t\t\t${product['Total Price']} \$');
    grandtotal += product['Total Price'] as double;
    totalGrandRiel += ((product['Total Price'] as double) * 4100).toInt();
  }
  print('--------------------------------------');
  print('Total Grand (\$) = $grandtotal');
  print('Total Grand (Riel) = $totalGrandRiel Riel');
}