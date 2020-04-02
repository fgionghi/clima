import 'dart:math';
import 'package:geolocator/geolocator.dart';

class Location {
  double latitude;
  double longitude;
  Location({this.latitude, this.longitude});

  Future<void> getCurrentLocation() async {
    try {
      Position position = await Geolocator()
          .getCurrentPosition(desiredAccuracy: LocationAccuracy.best);
      latitude = position.latitude;
      longitude = position.longitude;
    } catch (exception) {
      print(exception);
    }
  }
}
