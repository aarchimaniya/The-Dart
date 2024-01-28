import 'dart:io';

void main() {
  int Number, i;

  stdout.write("Enter A Number:");
  Number = int.parse(stdin.readLineSync()!);

  print("Multiplication Table:");

  for (i = 1; i <= 20; i++) {
    print("$Number * $i: ${Number * i}");
  }
}