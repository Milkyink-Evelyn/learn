T? findMax<T extends num>(List<T> list) {
  if (list.isEmpty) return null;

  T max = list[0];
  for (T item in list) {
    if (item > max) {
      max = item;
    }
  }
  return max;
}

void main() {
  List<int> intList = [3, 7, 2, 9, 5];
  List<double> doubleList = [1.2, 3.14, 2.7, 0.5];

  print("Max int: ${findMax(intList)}, Max double: ${findMax(doubleList)}");
}
