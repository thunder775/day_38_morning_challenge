// Challenge: Find all permutations
// Given a collection of *distinct* integers, return all possible permutations.
/// Example:
//  Input: [1,2,3]
//  Output:
//  [
//    [1,2,3],
//    [1,3,2],
//    [2,1,3],
//    [2,3,1],
//    [3,1,2],
//    [3,2,1]
//  ]
void addToList(List<int> numbers,List<List<int>> temp){
  List<int> tempo = [];
  numbers.forEach((integer) {
    tempo.add(integer);
  });
  temp.add(tempo);
}

void swap(List<dynamic> list, int i, int j) {
  int temp = list[i];
  list[i] = list[j];
  list[j] = temp;
}

List<List<int>> permute(List<int> numbers, int start) {
  List<List<int>> temp = [];
  if (start == numbers.length-1) {
   addToList(numbers, temp);
  return temp;
  }
  for (int i = start; i < numbers.length; i++) {
    swap(numbers, start, i);
    temp.addAll(permute(numbers, start + 1));
    swap(numbers, start, i);
  }
  return temp;
}



main() {
  print(permute([1, 2, 3,4], 0));
}
