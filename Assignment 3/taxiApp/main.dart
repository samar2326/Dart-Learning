import 'dart:io';

import 'taxi/classic_taxi.dart';
import 'taxi/online_taxi.dart';

void main(List<String> args) {
  print("Enter The distance");
  num distance = num.parse(stdin.readLineSync()!);
  var classic_taxi = new classic_Taxi(distance);
  var online_taxi = onlineTaxi(distance);
  var online_taxi_fare = online_taxi.calculate_fare_online_taxi();
  var classic_taxi_fare = classic_taxi.calculate_fare_classic_taxi();
  if (online_taxi_fare <= classic_taxi_fare) {
    print("choose online taxi");
  } else {
    print("choose classic taxi");
  }
}
