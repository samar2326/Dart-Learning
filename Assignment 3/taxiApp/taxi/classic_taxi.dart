import 'dart:io';

class classic_Taxi {
  num base_fare = 15;
  num speed = 80;
  num min_cost_per_min = 15;
  num fixed_fare_for_first_20_km = 30;
  num distance_travel = 0;
  num min_cost_per_Km = 15;
  classic_Taxi(num distance_travel) {
    this.fixed_fare_for_first_20_km = fixed_fare_for_first_20_km;
    this.distance_travel = distance_travel;
    this.speed = speed;
    this.base_fare = base_fare;
    this.min_cost_per_min = min_cost_per_min;
    this.min_cost_per_Km = min_cost_per_Km;
  }
  num cost_by_time(num speed, num distance, num min_cost_per_min) {
    num speed_per_min = speed / 60;
    num time_taken_in_min_for_journey = (distance!=20) ? ((distance - 20) / speed_per_min).ceil():0;

    num total_cost_by_time = time_taken_in_min_for_journey * min_cost_per_min;
    return total_cost_by_time;
  }

  num cost_by_distance(num distance, num min_cost_per_Km) {
    num remain_distance_after_20 = (distance!=20) ?(distance - 20).ceil():0;

    num total_cost_by_distance = remain_distance_after_20 * min_cost_per_Km;
    return total_cost_by_distance;
  }

  num calculate_fare_classic_taxi() {
    num fare = 0;

    if (distance_travel <= 20) {
      fare = fixed_fare_for_first_20_km + 15;
    } else {
      fare = fixed_fare_for_first_20_km +
          15 +
          cost_by_distance(distance_travel, min_cost_per_Km) +
          cost_by_time(speed, distance_travel, min_cost_per_min);
    }
    return fare;
  }
}

// void main(List<String> args) {
//   print("Enter the distance");
//   num distance = num.parse(stdin.readLineSync()!);
//   var obj = classicTaxi(distance);
//   print(obj.calculate_fare_classic_taxi(distance));
// }
