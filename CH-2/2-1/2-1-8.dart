import 'dart:io';

void main() {
  int a;
  int interest;

  stdout.write("Enter Amount:");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Interst:");
  interest = int.parse(stdin.readLineSync()!);

  print("Total Amount Is: ${a + ((a * interest) / 100)}");
}