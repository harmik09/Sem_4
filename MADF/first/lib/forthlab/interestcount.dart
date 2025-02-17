import 'dart:io';

void main(){
  stdout.write('Enter Principle Amout:');
  double principle=double.parse(stdin.readLineSync()!);
  stdout.write('Enter Rate:');
  String? rateStr = stdin.readLineSync();
  double? rate= rateStr!.isEmpty ? null : double.parse(rateStr);
  stdout.write('Enter Tenure Year:');
  double tenure=double.parse(stdin.readLineSync()!);

  print("te : $tenure");
  double si= rate == null ? simpleInterest(principle: principle, tenure: tenure) : simpleInterest(principle: principle, tenure: tenure,rate: rate);

  print('Simple Interest: $si');
}

double simpleInterest({required double principle, required tenure, double? rate = 5}){

  return (principle*rate!*tenure)/100;

}