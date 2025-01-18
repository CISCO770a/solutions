import 'dart:io';

void main() {
  //getNumbersSquare;
  //exectueSequance;
  //decreamentValue;
  //alphaSequance;
  //printUsername;
  calculateFuckenFibonacci;
}

// Lab3 - Topic 2

//P4

void get getNumbersSquare {
  int maxRange = 21;
  for (int i = 1; i < maxRange; i++) {
    print("$i --- ${i * i}");
  }
}

//P5

void get exectueSequance {
  List<int> sequance = <int>[];
  for (int i = 8; i < 90; i += 3) {
    sequance.add(i);
  }

  print("Squance : $sequance");
}

// P6

void get decreamentValue {
  List<int> seq = <int>[];

  for (int i = 100; i > 1; i -= 2) {
    seq.add(i);
  }

  print("Squance : $seq");
}

// P7

void get alphaSequance {
  String aPart = "";
  String bPart = "";
  String cdpart = "E";
  String fpart = "G";

  List<String> seqparts = <String>[];

  for (int i = 1; i < 11; i++) {
    aPart += "A";
  }
  for (int i = 1; i < 8; i++) {
    bPart += "B";
  }
  for (int i = 1; i < 5; i++) {
    cdpart = "CD${cdpart}";
  }
  for (int i = 1; i < 7; i++) {
    fpart = "F${fpart}";
  }

  seqparts = <String>[
    aPart,
    bPart,
    cdpart,
    fpart,
  ];

  String fullSeq = seqparts.join();

  print("FullSquance is  : $fullSeq");
}

// P8

void get printUsername {
  stdout.writeln("Enter you Fucken name : ");
  String inputName = stdin.readLineSync() as String;

  stdout.writeln("How many times do you want to print you Fucken name : ");

  String inputNumber = stdin.readLineSync() as String;

  int numberOfTimes = int.parse(inputNumber) + 1;

  for (int i = 1; i < numberOfTimes; i++) {
    print("Your name is  : $inputName");
  }
}

//P 9

void get calculateFuckenFibonacci {
  stdout.writeln("Enter number to get Fibonacci:");

  String inputNumber = stdin.readLineSync() as String;

  int number = int.parse(inputNumber);

  List<int> seq = <int>[1, 1];

  for (int i = 2; i < number; i++) {
    int firstTarget = seq.length - 1;
    int secondTarget = seq.length - 2;

    int targetValue1 = seq[firstTarget];
    int targetValue2 = seq[secondTarget];

    int nextValue = targetValue2 + targetValue1;

    seq.add(nextValue);
  }

  print("Seq : $seq");
}
