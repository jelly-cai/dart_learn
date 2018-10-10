import 'package:flutter/material.dart';

class EnumWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    test();
    return Text("EnumWidget");
  }

  test(){
    print(Phone.iphone.index);
    print(Phone.huawei.index);
    List<Phone> phones = Phone.values;
    phones.forEach((phone){
      print(phone);
    });
  }

}

enum Phone{
  xiaomi,iphone,huawei
}
