import 'package:aula5/Page/counter_model.dart';

class CounterController{
  ModelCounter model = ModelCounter();

  String counter(){
    return model.counter.toString();
  }

  void incrementOperation(){
    model.handleCount(add);
  }

  void decrementOperation(){
    model.handleCount(sub);
  }

  int add(number){
    return number += 1;
  }

  int sub(number){
    return number -= 1;
  }
 
}