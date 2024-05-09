import 'dart:io';

import 'models.dart';

List<Cars> carlist=[];


void main(){
  


while(true){

  print("Enter :");
  print("        0 to Exit");
  print("        1 to Add Car");
  print("        2 to Delete Car");
  print("        3 to Bill Car");
  print("        4 to Show Car List");
  
  int op=int.parse(stdin.readLineSync().toString());

  if(op==0){
    break;
  }
  
  switch(op){
    case 1 : print(" Add Car ");
             addCar();
    case 2 : print("Delete Car");
             deletecar();
    case 3 : print("Bill Car");
              bill();
    case 4 : print("Show Car List");
             showList();
  }
  
            }
}



void addCar(){

  
  while(true){
    print('');
  print("Enter the Car Company Name");
  String company=stdin.readLineSync().toString();

  print("Enter the Car Model");
  String model=stdin.readLineSync().toString();

  print("Enter the Car Price");
  double price=double.parse(stdin.readLineSync().toString());

  final car=Cars(company: company, model: model, price: price);
  carlist.add(car);

  print('...........................................................');

  print("To Add Another Car, Enter 1");
  print("To Exit, Enter 0");
  int op=int.parse(stdin.readLineSync().toString());

  if(op==0){
    break;
  }
  }

}

void showList(){
  print('');
  print("Cars are :");
 for(int i=0; i<carlist.length; i++){
  final cars=carlist[i];
  print('...........................................................');
  print("");
  print('Si.no : $i');
  print("Company Name : ${cars.company}");
  print("Car Model : ${cars.model}");
  print("Car Price  : ${cars.price}");
  print('');
  print(' ');
  }

}

void deletecar(){
  showList();

  print("Enter the Si.no of the car to be deleted");

  dynamic sino=int.parse(stdin.readLineSync().toString());
  while(true){
  if(sino<carlist.length){
  carlist.removeAt(sino);
  }else{
    print("Invalid Si.no");
  }

  print("");

  

  print("If you want to delete another Car, Enter 1");
  print("To Exit, Enter 0");

int op=int.parse(stdin.readLineSync().toString());

  if(op==0){
    break;
  }
  
  }
}


void bill(){

  int flag =0;
  double finalPrice;

  showList();
  print(" ");
  print("Enter the Si.no of the Car");
  dynamic sino=int.parse(stdin.readLineSync().toString());

  print(" ");

if(sino<carlist.length){
  flag=1;
}


    print("Enter the Discount %");
    double disc=double.parse(stdin.readLineSync().toString());
    print(" ");
    print("....................................................");

    print("Chris' Used Car Showroom ");
    print("Kuravilangad (P.O), Kottayam");
    print(" ");


    
    
 if(flag==1){

      final car=carlist[sino];
      dynamic price=car.price;

      print("Name : ${car.company} ${car.model}");
      print("Orginal Price : $price");
      print("$disc % discount");
if(disc==0){
  finalPrice=price;
}else{
      double discAmount= (price*disc)/100;
       finalPrice = price-discAmount;
      print("--------------------------------------------");
      print("The Final Price is        :   $finalPrice");
}
}else{
        print("Car not available");
      }
    
  


}
