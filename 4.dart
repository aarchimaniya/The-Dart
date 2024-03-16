import 'dart:io';

void main() {

   int row,column;

    stdout.write("Enter row : ");
    row = int.parse(stdin.readLineSync()!);
    
    stdout.write("Enter column : ");
    column = int.parse(stdin.readLineSync()!);

 List matrix1 = List.generate(row, (i) => List.generate(column, (j) => 0));
 List matrix2 = List.generate(row, (i) => List.generate(column, (j) => 0));
 List result = List.generate(row, (i) => List.generate(column, (j) => 0));


 for (int i = 0; i < row; i++) {
    for (int j = 0; j < column; j++) {
      stdout.write("Enter the elements of the first matrix:");
      matrix1[i][j] = int.parse(stdin.readLineSync()!);
    }
 }

 
 for (int i = 0; i < row; i++) {
    for (int j = 0; j < column; j++) {
      stdout.write("Enter the elements of the second matrix:");
      matrix2[i][j] = int.parse(stdin.readLineSync()!);
    }
 }

print("\nMatrix 1:");
  for (int i = 0; i < matrix1.length; i++) {
    for (int j = 0; j < matrix1[i].length; j++) {
      stdout.write("${matrix1[i][j]} ");
    }
    print("");
  }

  print("\nMatrix 2:");
  for (int i = 0; i < matrix2.length; i++) {
    for (int j = 0; j < matrix2[i].length; j++) {
      stdout.write("${matrix2[i][j]} ");
    }
    print("");
  }

 for (int i = 0; i < row; i++) {
    for (int j = 0; j < column; j++) {
      result[i][j] = matrix1[i][j] + matrix2[i][j];
    }

 }

 stdout.write("The Sum Of Matrix Are:\n");
 for (int i = 0; i < row; i++) {
    print(result[i]);
 }
   
 }