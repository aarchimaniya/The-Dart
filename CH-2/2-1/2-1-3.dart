import 'dart:io';

void main() {
  int a;
  int b;

  stdout.write("Enter A Number:");
  a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter B Number:");
  b = int.parse(stdin.readLineSync()!);

  print("Multiplication: $a * $b = ${a * b}");
}