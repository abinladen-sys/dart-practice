import 'dart:io';

void main() {
  StepCounter Stepcounter = StepCounter(0);

  Stepcounter.takeStep();
}

class StepCounter {
  int Totalsteps = 0;

  StepCounter(this.Totalsteps);

  takeStep() {
    while (true) {
      print("Enter steps:");
      int _steps = int.parse(stdin.readLineSync()!);
      if (_steps == 0) {
        print("Total steps: $Totalsteps");
      } else if (_steps > 0) {
        Totalsteps += _steps;
        print("Total steps: $Totalsteps");
      } else if (_steps == -1) {
        print("Goodbye!");
        break;
      }
    }
  }
}
