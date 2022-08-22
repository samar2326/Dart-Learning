class onlineTaxi {
  num fixed_fare_for_first_20_km = 40;
  num distance_travel = 0;
  num fare_per_km_after_20_km = 10;
  onlineTaxi(distance_travel) {
    this.fixed_fare_for_first_20_km = fixed_fare_for_first_20_km;
    this.distance_travel = distance_travel;
    this.fare_per_km_after_20_km = fare_per_km_after_20_km;
  }
  num calculate_fare_online_taxi() {
    num fare = 0;
    if (distance_travel <= 20) {
      fare = fixed_fare_for_first_20_km;
    } else {
      num km_rem_after_20 = (distance_travel - 20).ceil();
      fare = fixed_fare_for_first_20_km +
          km_rem_after_20 * fare_per_km_after_20_km;
    }
    return fare;
  }
}
