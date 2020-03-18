

/**
 * Dart 中的继承
 * 1.extends
 * 2.子类继承 父类里面公有的属性和方法 但不会继承构造函数
 * 3.子类可以重写父类的方法
 */

class Person{
  String name;
  int age;
  Person(this.name,this.age);

  void printInfo(){
    print("${this.name}---${this.age}");
  }

  void work(){
    print("father work");
  }
}

class Engineer extends Person{
  String job;
  Engineer(String name, int age,String job) : super(name, age){
    this.job=job;
  }

  @override
  void work(){
    print("engineer work");
  }

}


main(List<String> args) {
  Engineer engineer=new Engineer("tom", 99,"码农");
  engineer.printInfo();
  engineer.work();
}