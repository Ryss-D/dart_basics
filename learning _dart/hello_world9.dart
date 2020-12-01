// Abstraction -- you dont need to know what something is doing, especially
// how something is doing it to use it

import 'coffee_machine.dart';

void main() {
  CoffeeMachine coffeMachine = CoffeeMachine();

  print(coffeMachine.makeCoffee(1));
  print(coffeMachine.makeCoffee(100));
  coffeMachine.refillCoffeeBeans(100);
  print(coffeMachine.makeCoffee(50));

  // you dont neet to kanow how something was made to know how to use it
}

// 4 pillars of OOP
// Encapsaulation -- allows to put information together with the methos inside the class
// Inheritence -- a class who takes things from his parents
// Polymorphisim (suptypes) -- we cant use child classes as its parent class
// Abstractino you dont need to know how something works to use it
