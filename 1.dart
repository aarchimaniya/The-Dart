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

  List<int> nag=[];
  for(int i=0; i<len; i++)
  {
    if(array[i]<0)
    {
      nag.add(array[i]);
    } 
  }
   print("The Nagative Elements Are:$nag");
}