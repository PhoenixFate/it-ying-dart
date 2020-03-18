void main(List<String> args) {
  print("print 是系统内置的方法");
  print(test());
  print(getList(10));
  print(printUserInfo("tom"));
  print(printUserInfo2("唐大王"));
  print(printUserInfo2("唐嫣",'女'));
  //使用命名参数，传参的顺序可以不一样
  print(printUserInfo3('牛魔王',sex:"魔兽",age:9999));
  f1(f2);
}

String test(){
  return "abc";
}

//必填参数
List getList(int a){
  return ['aaa','bbb','ccc'];
}

//可选参数
String printUserInfo(String username,[int age]){
  if(age!=null){
    return "姓名: ${username}; 年龄: ${age}";
  }else {
    return "姓名: ${username}; 年龄: 保密";
  }
}

//默认参数
String printUserInfo2(String username,[String sex='男']){
  return "姓名: ${username}; 性别: ${sex}";
}

//命名参数
//使用命名参数，传参的顺序可以不一样
String printUserInfo3(String username,{int age,String sex='男'}){
  if(age!=null){
    return "姓名: ${username}; 年龄:${age}; 性别: ${sex}";
  }
  return "姓名: ${username}; 年龄:保密; 性别: ${sex}";
}

//把方法当作参数
void f1(fn){
  fn();
}

void f2(){
  print("f2()");
}