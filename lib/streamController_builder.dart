import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// Stream mtlb dhara(nadi jaise bah rhi hoti h) means continuous flow
///     input(sink) output(stream) or bich rasta hota h input se output tk pahuchne ke liye use StreamController bolte h
///     jaise hi koi data input(sink) se output(steam) tk pahuchega to hmare subscriber ko pta chal jayega. jaise youtube pe koi video upload hone ke pta chal jata h
///     subsrcriber Streambuilder hota h jisse jm dekhte h output pe kya data change ho ke aaya h, ye do argument leta h
///     1.stream -- jis stream ko listen kr rhe h wo(jis stream ko subscribe kiya h wo) yaha counterController wo strema h
///     2. builder -- jaise koi data aayega waise hi ye ysko build kr dega .ye do argument leta h context, snapshot
///     snapshot -- jo v data stream me aaya hota h wo. sari information stream ke bare me ye deta h ex- data aaya h ya nhi ,iski connection state kya h process ho rha h ya ho chuka h ye sb infprmation deta h


class StreamControllerBuilder extends StatelessWidget{
  int counter = 0;
  StreamController<int> counterController = StreamController<int>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: StreamBuilder(
          stream: counterController.stream,
            builder: (context, snapshot){
              if(snapshot.hasData){
                return Text(snapshot.data.toString(),
                style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),);
              }
              else{
                return Text("0",
                  style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),);
              }
            }
            ),
      ),
    );
  }
}