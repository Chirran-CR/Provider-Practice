import "dart:async";

import "package:flutter/material.dart";
// import "package:provider/provider.dart";

class CountChangeNotifier extends ChangeNotifier{

  int count =0;

  void increaseCount(){
    Timer.periodic(const Duration(seconds: 1), (timer) { 
      count++;
      if(timer.tick == 10){
        timer.cancel();
      }
      // print("before ${timer.tick}");
    notifyListeners();
    // print("after : ${timer.tick}");
    });
    // count++;
    // notifyListeners();
  }

}