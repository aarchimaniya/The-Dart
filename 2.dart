import 'dart:io';
void main()
{
  
  List<int>array=[];

  stdout.write("Enter Array Size:");
  int len= int.parse(stdin.readLineSync()!);

  
  for(int i=0; i<len; i++)
  {
    stdout.write("Enter Array Elements: ");
    array.add(int.parse(stdin.readLineSync()!));
  }

   var Max=array[0];
  for(int i=0; i<len; i++)
  {
    if(Max < array[i])
    {
      Max = array[i];
    }
  }
  print("Largest Elements in Array Are:$Max");


}