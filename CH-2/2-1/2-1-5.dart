import 'dart:io';

void main() {
  int Number1, i, Number2, j;

  stdout.write("Enter Number1:");
  Number1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter Number2:");
  Number2 = int.parse(stdin.readLineSync()!);

  print("Multiplication Table:");

  for (i = Number1; i <= Number2; i++) {
    for (j = 1; j <= 10; j++) {
      print("$i * $j: ${i * j}");
    }
  }
}