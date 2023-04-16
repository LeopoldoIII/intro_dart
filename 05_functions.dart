void main() {
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print('Suma: ${addTwoNumbersLab(10, 20)}');
}

String greetEveryone() => 'Hello everyone!';

int addTwoNumbers(int a, [int b = 0]) {
  // b ??= 0 
  return a + b;
}

int addTwoNumbersLab(int a, int b) => a + b;
