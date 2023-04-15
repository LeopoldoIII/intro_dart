void main() {
  final numbers = [1, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  print('list original $numbers');
  print('lenth ${numbers.length}');
  print('Index 0 ${numbers.first}');
  print('Index -1 ${numbers.last}');
  print('Reversed ${numbers.reversed}');

  final reversedNumbers = numbers.reversed;
  print('Iterable: $reversedNumbers');
  print('List: ${reversedNumbers.toList()}');
  print('Set: ${reversedNumbers.toSet()}');

  //WHERE

  final numbersGreaterThan5 = numbers.where((num) => num > 5);
  final numbersLessThan5 = numbers.where(
    (element) {
      return element < 5;
    },
  );
  print(numbersGreaterThan5);
  print(numbersLessThan5);
}
