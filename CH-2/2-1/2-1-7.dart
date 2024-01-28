import 'dart:io';

void main() {
  String name;
  String Surname;

  stdout.write("Enter Name:");
  name = stdin.readLineSync()!;

  stdout.write("Enter Surname:");
  Surname = stdin.readLineSync()!;

  print("Name: = ${name + Surname}");
}