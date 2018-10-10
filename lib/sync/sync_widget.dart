import 'dart:async';

import 'package:flutter/material.dart';

class SyncWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    test1();
    return Text("SyncWidget");
  }


  test(){
    naturalsToSync(10).forEach((i) => print(i));
  }

  test1(){
    naturalsToAsync(10).listen((data) => print(data));
  }

  Iterable<int> naturalsToSync(int n) sync*{
    int k = 0;
    while(k < n) yield k++;
  }

  Stream naturalsToAsync(int n) async*{
    int k = 0;
    while(k < n){
      yield k++;
    }
  }

}