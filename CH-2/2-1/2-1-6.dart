import 'dart:io';

void main() {
  int a;

  stdout.write("Enter A Number:");
  a = int.parse(stdin.readLineSync()!);

  print("Cube: $a * $a * $a = ${a * a * a}");
}