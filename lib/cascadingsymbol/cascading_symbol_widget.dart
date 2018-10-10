import 'package:flutter/material.dart';

class CascadingSymbolWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    test();
    return Text("123");
  }

  test() {
    Name name = Name()
      ..name = "123"
      ..age = 12;
    print(name.age);
  }
}

class Name {
  int age;
  String name;

  Name({this.age, this.name});
}
