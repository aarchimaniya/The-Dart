import 'dart:io';

void main() {
 int size;
 int operation;
 List<int> arr = [];

 stdout.write("Enter the size of array:");
 size = int.parse(stdin.readLineSync()!);

 for (int i = 0; i < size; i++) {
    stdout.write("Enter the ${i + 1} element:");
    arr.add(int.parse(stdin.readLineSync()!));
 }

 do {
    print("\nMenu:");
    print("1. Insert");
    print("2. Delete");
    print("3. Update");
    print("4. View");
    print("5. Exit");

    stdout.write("\nEnter your operation:");
    operation = int.parse(stdin.readLineSync()!);

    switch (operation) {
      case 1:
        int position, insert;
        stdout.write("Enter the position where you want to insert:");
        position = int.parse(stdin.readLineSync()!);
        stdout.write("Enter the element you want to insert:");
        insert = int.parse(stdin.readLineSync()!);
        arr.insert(position, insert);
        print("Element inserted successfully!");
        break;

      case 2:
        int delete;
        stdout.write("Enter the position where you want to delete:");
        delete = int.parse(stdin.readLineSync()!);
        arr.removeAt(delete);
        print("Element deleted successfully!");
        break;

      case 3:
        int updateposition, update;
        stdout.write("Enter the position where you want to update:");
        updateposition = int.parse(stdin.readLineSync()!);
        stdout.write("Enter the updated element:");
        update = int.parse(stdin.readLineSync()!);
        arr[updateposition] = update;
        print("Element updated successfully!");
        break;

      case 4:
        print('Elements in the array: $arr');
        break;

      default:
        print("Invalid Choice");
        break;
    }
 }while (operation !=5);
}