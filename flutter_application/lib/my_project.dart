class MyProject {
  int _value;
  MyProject(this._value);
int get value => _value;
set value(int newValue) => _value= newValue;
void increase(){
  _value++;
}
void decrease(){
  _value--;
}
void square(){
  _value = _value * _value;
}
int power(int exponent){
  if(exponent==0){
    return 1;
  }
  else{
    int ketqua=1;
    for(int i=0;i<exponent;i++){
      ketqua= ketqua * _value;
    }
    _value= ketqua;
  }
  return _value;
}


}