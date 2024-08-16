import 'package:flutter/cupertino.dart';

class CounterProvider extends ChangeNotifier{

  //data
  int count= 0;
  void incremnet(){
    count++;
    notifyListeners();
}
int getvalue(){
    return count;
}

}