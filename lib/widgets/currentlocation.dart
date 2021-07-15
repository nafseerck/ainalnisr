import 'package:flutter/material.dart';
import 'package:geocoder/geocoder.dart';
import 'package:geolocator/geolocator.dart';

class currentLocation extends StatefulWidget {
  @override
  _currentLocationState createState() => _currentLocationState();
}

class _currentLocationState extends State<currentLocation> {
  var locationMessage = "";

  getCurrentLocation() async {
    Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.low);

    print(position.latitude);
    print(position.longitude);
    getAddressFromCordinates(
        Coordinates(position.latitude, position.longitude));
  }

  getAddressFromCordinates(Coordinates cords) async {
    var addresses = await Geocoder.local.findAddressesFromCoordinates(cords);
    var first = addresses.first;
    print("${first.addressLine}");
    // locationMessage = "Address : ${first.addressLine}";
    print(locationMessage);

    setState(() {
      locationMessage = "${first.addressLine}";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Location Services"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.location_on,
              size: 46.0,
              color: Colors.blue,
            ),
            SizedBox(
              height: 10.0,
            ),
            Text(
              "Get User Location",
              style: TextStyle(
                fontSize: 26.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Text(
              "Address: $locationMessage",
              style: TextStyle(
                color: Colors.red,
                fontSize: 24.0,
              ),
            ),
            TextButton(
              onPressed: () {
                getCurrentLocation();
              },
              child: Text(
                "Get User Current Location",
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
