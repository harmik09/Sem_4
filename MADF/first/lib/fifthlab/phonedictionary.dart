
import 'dart:io';

class PhoneDictionary{
  String? name;
  dynamic mobileNumber;
  List<Map<String, dynamic>> phoneDictonary=[];


  void createDictonary({required String name,required dynamic mobileNumber}){
    this.name=name;
    this.mobileNumber=mobileNumber;
    phoneDictonary.add({
     name : mobileNumber
    });

    print(phoneDictonary);
  }
}

void main(){
  PhoneDictionary phone=new PhoneDictionary();
  String name;
  dynamic mobileNumber;
  for(int i=0;i<5;i++){
      stdout.write('Name:');
      name=stdin.readLineSync()!;
      stdout.write('Mobile Number:');
      mobileNumber=stdin.readLineSync()!;
      phone.createDictonary(name: name, mobileNumber: mobileNumber);
  }
}