import 'dart:io';
import 'dart:math';

void main() {
  //countNumberOfSquaresEndsWith1;
  //countNumberOfSquaresEndsWith9And4;
  //doCalculation;
  //sumNumbers;
  //sumOfNumberDivisors;
  //getPerfectNumber;
  //getSquareFreeNumber;
  // swapValues;
  //factorialOfNumber;
  guessFuckenNumber;
}
// Lap 6 - Topic 5

// P1
void get countNumberOfSquaresEndsWith1 {
  List<int> sqrtNumbsers = <int>[];
  for (int i = 1; i < 101; i++) {
    int sqrtOfNum = i * i;
    bool isNumberEndsWith1 = sqrtOfNum.toString().endsWith("1");
    if (isNumberEndsWith1) {
      sqrtNumbsers.add(sqrtOfNum);
    }
  }
  print(
      "Numbers of Squares From 1 to 100 : ${sqrtNumbsers.length}, $sqrtNumbsers");
}

// P2

void get countNumberOfSquaresEndsWith9And4 {
  List<int> sqrtNums4 = <int>[];
  List<int> sqrtNums9 = <int>[];

  for (int i = 1; i < 101; i++) {
    int sqrtOfNum = i * i;

    bool isNumEndsWith4 = sqrtOfNum.toString().endsWith("4");

    if (isNumEndsWith4) {
      sqrtNums4.add(sqrtOfNum);
    }

    bool isNumEndsWith9 = sqrtOfNum.toString().endsWith("9");

    if (isNumEndsWith9) {
      sqrtNums9.add(sqrtOfNum);
    }
  }

  print("Number of Squares Ends With 4 is :${sqrtNums4.length},${sqrtNums4} ");
  print("Number of Squares Ends With 9 is :${sqrtNums9.length},${sqrtNums9} ");
}

// P3

void get doCalculation {
  stdout.writeln("Enter number to calculte it =>");
  String inputNumber = stdin.readLineSync() as String;

  int number = int.parse(inputNumber) + 1;

  double calculation = 0.0;

  for (int i = 1; i < number; i++) {
    calculation += 1 / i;
  }

  print(calculation);

  double finalResult = calculation - log(number - 1);

  print("The Final Reualt is ${finalResult}");
}

// P4

void get sumNumbers {
  int result = 0;
  for (int i = 1; i < 2001; i++) {
    if (i % 2 == 0) {
      result -= i;
    } else {
      result += i;
    }
  }

  print("Resualt of the Sumition : $result");
}

// P5

void get sumOfNumberDivisors {
  List<int> divisors = <int>[];

  stdout.writeln("Enter the number to get the Divisor sum :");
  String inputNumber = stdin.readLineSync() as String;

  int number = int.parse(inputNumber);

  for (int i = 1; i < number + 1; i++) {
    if (number % i == 0.0) {
      divisors.add(i);
      print("$i is a divisor of $number");
    }
  }

  int sumOfDivisors = 0;

  for (int j = 0; j < divisors.length; j++) {
    sumOfDivisors += divisors[j];
  }

  print("The sum of Divisors is : $sumOfDivisors");
}

// P6

void get getPerfectNumber {
  List<int> perfectNumbers = <int>[];

  for (int i = 1; i < 10000; i++) {
    int sum = 0;
    for (int j = 1; j < i; j++) {
      if (i % j == 0.0) {
        sum += j;
      }
    }

    if (sum == i) {
      print("Number $i is a perfect number.");
      perfectNumbers.add(i);
    }
  }
  print(
    "Number of perfect numbers less then 10000 is ${perfectNumbers.length} : $perfectNumbers",
  );
}

// P7

void get getSquareFreeNumber {
  List<int> numberDivisors = <int>[];

  stdout.writeln("Enter Number to check if it is SquareFree =>");

  String inputNumber = stdin.readLineSync() as String;

  int number = int.parse(inputNumber);

  for (int i = 1; i < number + 1; i++) {
    if (number % i == 0.0) {
      print("Number $i is Dovisor of Number $number");
      numberDivisors.add(i);
    }
  }

  print("*" * 50);

  List<int> numberPerfectSqrtNumbers = <int>[];

  for (int j = 1; j < numberDivisors.length; j++) {
    for (int k = 1; k * k <= numberDivisors[j]; k++) {
      if ((numberDivisors[j] % k == 0) && (numberDivisors[j] / k == k)) {
        print("Number ${numberDivisors[j]} is a Perfect Square");
        numberPerfectSqrtNumbers.add(numberDivisors[j]);
      }
    }
  }
  if (numberPerfectSqrtNumbers.isNotEmpty) {
    print(
        "Fucken  Number : $number has $numberPerfectSqrtNumbers and it is not Perfect Number");
    return;
  }

  print("Number is a Fucken perfect number");
}

// P8

void get swapValues {
  int x = 1;
  int y = 2;
  int z = 3;

  int pointer = x;
  x = y;
  y = z;
  z = pointer;

  print("Value of X : $x");
  print("Value of Y : $y");
  print("Value of Z : $z");
}

// P11

void get factorialOfNumber {
  stdout.writeln("Enter number to get factorial =>");
  String inputNumber = stdin.readLineSync() as String;

  int number = int.parse(inputNumber);

  int factorial = number;
  number--;

  for (number; number > 1; number--) {
    factorial *= number;
  }

  print("Factorial: $factorial");
}

// P12

void get guessFuckenNumber {
  Random random = new Random();

  int randomNumber = random.nextInt(10);

  print(randomNumber);

  int userScore = 0;

  for (int i = 0; i < 5; i++) {
    stdout.writeln("Enter a Fucken number => ");
    String inputNumber = stdin.readLineSync() as String;

    int number = int.parse(inputNumber);
    bool isCorrectGuess = number == randomNumber;

    if (isCorrectGuess) {
      userScore += 10;
      print("You Got it !! Your current Score is :$userScore");
      break;
    } else {
      userScore -= 1;
      print("Go Fuck yourself you son of a Bitch, your score is : $userScore");
    }
  }
}
