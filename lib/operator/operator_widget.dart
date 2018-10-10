import 'package:flutter/material.dart';

class OperatorWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    test2();
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
    if(pig is Animal){
      print("pig is animal");
    }
    if(pig is Person){
      print("pig is person");
    }
    if(pig is Pig){
      print("pig is Pig");
      print(pig.color);
    }
    if(pig is! Person){
      print("pig is not person");
    }
    print((pig as Pig).color);
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
