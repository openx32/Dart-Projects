import 'dart:io';

// Define an interface
abstract class Animal {
  void makeSound();
}

// Define a base class implementing the Animal interface
class BaseAnimal implements Animal {
  @override
  void makeSound() {
    print('Generic Animal Sound');
  }
}

// Define a subclass that overrides the makeSound method
class Dog extends BaseAnimal {
  @override
  void makeSound() {
    print('Woof Woof!');
  }
}

// Define a class that implements an interface
class Cat implements Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

// Define a class to demonstrate initialization from a file
class AnimalFileReader {
  List<String> readDataFromFile(String fileName) {
    try {
      File file = File(fileName);
      List<String> lines = file.readAsLinesSync();
      return lines;
    } catch (e) {
      print('Error reading file: $e');
      return [];
    }
  }
}

void main() {
  // Demonstrate inheritance and method overriding
  Dog dog = Dog();
  dog.makeSound(); // Output: Woof Woof!

  Cat cat = Cat();
  cat.makeSound(); // Output: Meow!

  // Demonstrate initialization from a file
  AnimalFileReader reader = AnimalFileReader();
  List<String> data = reader.readDataFromFile('animals.txt');
  for (String line in data) {
    print(line);
  }

  // Demonstrate the use of a loop
  for (int i = 0; i < 5; i++) {
    print('Loop iteration $i');
  }
}
