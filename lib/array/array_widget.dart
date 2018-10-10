import 'package:flutter/material.dart';

class ArrayWidget extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    array1();
    return Text("123");
  }

  array1(){
    var mapData = {
      "1":"1",
      "2":"2",
      "3":"3",
    };
    mapData.forEach((key,value){
      print(key);
      print(value);
    });
    mapData.keys.forEach((key){
      print(mapData[key]);
    });
  }

}