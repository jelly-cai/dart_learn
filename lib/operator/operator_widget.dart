import 'package:flutter/material.dart';

class OperatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    test3();
    return Text("123");
  }

  test() {
    Person name;
    print(name?.age);
  }

  test1() {
    Person name;
    name.age ??= 12;
    print(name.age);
  }

  test2() {
    Animal pig = Pig(color: Colors.white);
    if (pig is Animal) {
      print("pig is animal");
    }
    if (pig is Person) {
      print("pig is person");
    }
    if (pig is Pig) {
      print("pig is Pig");
      print(pig.color);
    }
    if (pig is! Person) {
      print("pig is not person");
    }
    print((pig as Pig).color);
  }

  test3() {
    Cup cup1 = Cup(firstName: "1", lastName: "1");
    Cup cup2 = Cup(firstName: "1", lastName: "1");
    print(cup1 == cup2);
  }
}

class Person extends Animal {
  int age;

  Person({this.age, name}) : super(name: name);
}

class Pig extends Animal {
  Color color;

  Pig({this.color, name}) : super(name: name);
}

class Animal {
  String name;

  Animal({this.name});
}

class Cup {
  String firstName, lastName;

  Cup({this.firstName, this.lastName});


  @override
  int get hashCode{
    return firstName.hashCode + lastName.hashCode;
  }

  bool operator ==(dynamic other) {
    if (other is! Cup) {
      return false;
    }
    Cup cup = other;
    return firstName == cup.firstName && lastName == cup.lastName;
  }
}
