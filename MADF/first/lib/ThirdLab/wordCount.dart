import 'dart:io';

void main(){
  stdout.write("Enter String");
  String str=stdin.readLineSync()!;

  List<String> strList=[];
  Map<String,int> strMap={};

  strList=str.split(" ");
   // ["this" ,"is", "a ","test", "this", "is", "a"]
  // {"this": 2,"is" : 2 , "a" : 2, "test" : 1}
  for(int i=0;i<strList.length;i++){
     String key = strList[i];
    if(strMap.containsKey(key)){
       int temp = strMap[key]!;
       strMap[key] = temp +1;
    }else{
      strMap[key] = 1;
    }
  }
  print(strMap);
  print(strMap.values);
  print(strMap.keys);

  strMap.forEach((key,value){
    print("key : $key , value : $value");
  });
  //= [4, 1, 2, 1, 2
  // {4:1 , 2:2 , 1:2}
}