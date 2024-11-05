  //1 Class and Object
class Car {
  String brand;
  String model;
  int year;
  // Constructor
  Car(this.brand, this.model, this.year);
  void displayInfo() {
    print('Car: $brand $model, Year: $year');
  }
}

  // 2 Inheritance
class Animal {
  void eat() {
    print('Eating...');
  }
  void sound() {
    print('Some sound');
  }
}
class Dog extends Animal {
  void bark() {
    print('Barking...');
  }
}

//method override
  class Cat extends Animal {
    @override
    void sound() {
      print('Meow');
    }
  }

  //3. Encapsulation
  class BankAccount {
    double _balance; // Private variable
    BankAccount(this._balance);
    void deposit(double amount) {
      if (amount > 0) {
        _balance += amount;
      }
    }
    void withdraw(double amount) {
      if (amount > 0 && amount <= _balance) {
        _balance -= amount;
      } else {
        print('Insufficient funds');
      }
    }
    double get balance => _balance; // Getter for balance
  }

  //4 Access Modifiers
  class Person {
    String name; // Public
    int _age; // Private

    Person(this.name, this._age);

    void display() {
      print('Name: $name, Age: $_age');
    }
  }
  //5 Override Data Member
  class Vehicle {
    String model = 'Honda';
  }

  class Moto extends Vehicle {
    String model = 'Dream'; // Hides the parent class's brand

    void displayMoto() {
      print('Vehicle Brand: $model'); // Refers to the Moto's brand
      print('Parent Vehicle Brand: ${super.model}'); // Refers to the Vehicle's model
    }
  }


  void main() {
  //1 Class and Object
  Car myCar = Car('Toyota', 'Corolla', 2021);
  myCar.displayInfo(); // Output: Car: Toyota Corolla, Year: 2021

  Car anotherCar = Car('Honda', 'Civic', 2022);
  anotherCar.displayInfo(); // Output: Car: Honda Civic, Year: 2022
  print("1.-------------------");

  // 2 Inheritance
  Dog myDog = Dog();
  myDog.eat(); // Output: Eating...
  myDog.bark(); // Output: Barking...

  Cat myCat = Cat();
  myCat.sound(); // Output: Meow
  print("2.-------------------");

  //3 Encapsulation
  BankAccount account = BankAccount(1000);
  account.deposit(500);
  account.withdraw(200);
  print("Account balance = ${account.balance}"); // Output: 1300
  print("3.-------------------");

  // 4 Access Modifiers
  Person person = Person('Alice', 30);
  person.display(); // Output: Name: Alice, Age: 30
  print("4.-------------------");

  //5 Override Data Member
  Moto moto = Moto();
  moto.displayMoto();
    // Output:
    // Vehicle Brand: Specific Moto
    // Parent Vehicle Brand: Generic Vehicle
  print("5.-------------------");
}


