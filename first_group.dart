import 'dart:developer';
import 'dart:io';

void main() {
  //printStarsBox;
  //squareOfNumber;
  //numberMultiplies;
  //convertFromKgTopounds;
  //calculateAvgAndTotal;
  printRect;
}

// Lab 2 - Topic 2
// P1

void get printStarsBox {
  String singleLine = "*******************";
  int numOfLines = 4;
  for (int i = 0; i < numOfLines; i++) {
    log("${singleLine}");
  }
}

// P2

void get squareOfNumber {
  stdout.writeln("Enter the Number :");
  String inputNumber = stdin.readLineSync() as String;

  int number = int.parse(inputNumber);

  int squareOfNumber = number * number;

  String userOutput = "The Square of $number is $squareOfNumber";

  print(userOutput);
}

// P3

void get numberMultiplies {
  stdout.writeln("Enter number to get its mutiplications :");
  String inputNumber = stdin.readLineSync() as String;

  int number = int.parse(inputNumber);

  String userOutput =
      "${number}---${number * 2}---${number * 3}---${number * 4}---${number * 5}";
  print(userOutput);
}

// P4
void get convertFromKgTopounds {
  stdout.writeln("Enter your Fucken Weight in Kg :");

  String inputWeight = stdin.readLineSync() as String;

  int weightKg = int.parse(inputWeight);

  double wightPounds = 2.2 * weightKg;

  print("Your Weight in Pounds : ${wightPounds}");
}

// P5
void get calculateAvgAndTotal {
  int iteraitions = 3;

  List<int> numbers = <int>[];

  for (int i = 0; i < iteraitions; i++) {
    stdout.writeln("Enter number ${i + 1} :");
    String inputNumber = stdin.readLineSync() as String;

    int number = int.parse(inputNumber);

    numbers.add(number);
  }

  int total = 0;

  for (int j = 0; j < numbers.length; j++) {
    total += numbers[j];
  }

  double avg = total / numbers.length;

  String userOutput =
      "The Total of the numbers ${numbers} is : $total , and the Agerage is : $avg";

  print(userOutput);
}

// P6

void get printRect {
  for (int i = 0; i < 4; i++) {
    print("*" * (i + 1));
  }
}
