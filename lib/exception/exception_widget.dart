import 'package:flutter/material.dart';

class ExceptionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    test();
    return Text("点击");
  }

  test() {
    Test test;
    try {
      print(test.name);
    } on Exception catch (e) {
      print('Unknown exception: $e');
    } on Error catch (e) {
      print('Unknown Error: $e');
    } catch (e) {
      print('Something really unknown: $e');
    } finally {
      print("finally");
    }
  }
}

class Test {
  String name;

  Test({this.name});
}
