class ModelCounter{
  int _counter = 0;  

  int get counter {
    return _counter;
  }

  void handleCount(Function operation){
    _counter = operation(_counter);
  }
}