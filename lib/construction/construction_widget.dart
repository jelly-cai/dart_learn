import 'dart:math';
import 'package:flutter/material.dart';

class ConstructionWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    test5();
    return Text("ConstructionWidget");
  }

  test() {
    Point point = Point(1, 2);
    print(point.z);
  }

  test1() {
    Point1 point1 = Point1.alongXAxis(1);
    print(point1.y);
  }

  test2() {
    const Point2 point2 = Point2(1, 2);
    print(point2.x);
  }

  test3() {
    Logger logger1 = Logger("1");
    Logger logger2 = Logger("2");
    print(logger1.hashCode);
    Logger logger = Logger("1");
    print(logger.hashCode);
    Logger logger3 = Logger("3");
    print(logger3.hashCode);
  }

  test4(){
    T t = T();
    t.a();
    t.b();
  }

  test5(){
    F f = F();
    f.a();
    f.b();
    f.c();
  }

}

class Point {
  final num x;
  final num y;
  final num z;

  Point(x, y)
      : x = x,
        y = y,
        z = sqrt(x * x + y * y);
}

class Point1 {
  num x, y;

  Point1(this.x, this.y);

  Point1.alongXAxis(num x) : this(x, 0);
}

class Point2 {
  final num x, y;

  const Point2(this.x, this.y);
}

class Logger {
  final String name;
  bool mute = false;

  static final Map<String, Logger> _cache = <String, Logger>{};

  factory Logger(String name) {
    if (_cache.containsKey(name)) {
      return _cache[name];
    } else {
      final logger = Logger._internal(name);
      _cache[name] = logger;
      return logger;
    }
  }

  Logger._internal(this.name);
}

class S{
  a(){
    print("S.a");
  }
}

class A{
  a(){
    print("A.a");
  }
  b(){
    print("A.b");
  }
}

class B{
  a(){
    print("B.a");
  }
  b(){
    print("B.b");
  }
  c(){
    print("B.c");
  }
}

class T = A with S;

class F = B with A,S;


