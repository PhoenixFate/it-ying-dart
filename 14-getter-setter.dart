
class Rectangle{
  num _height;
  num _width;

  Rectangle(this._height,this._width);
  // 实例化的默认值
  // Rectangle():_height=20,_width=30{};


  get Height{
    return this._height;
  }

  set Height(value){
    this._height=value;
  }

  @override
  String toString() {
    return "height: ${_height}; width: ${_width}";
  }

}


main(List<String> args) {
  
  Rectangle r=new Rectangle(20.1, 22);
  print(r);
  print(r.Height);
  r.Height=99.0;
  print(r.Height);


}