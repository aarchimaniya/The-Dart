import 'dart:io';

void main() {
 List<String> inputList = ['a', 'b', 'c', 'a', 'b', 'c'];
 List<String> uniqueElements = getUniqueElements(inputList);

 print('The unique elements in the list are: $uniqueElements');
}

List<String> getUniqueElements(List<String> list) {
 Set<String> uniqueSet = Set<String>.from(list);
 return uniqueSet.toList();
}