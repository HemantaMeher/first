import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:flutter/material.dart';

class GeoLocatorScreen extends StatefulWidget {
  const GeoLocatorScreen({Key? key}) : super(key: key);

  @override
  State<GeoLocatorScreen> createState() => _GeoLocatorScreenState();
}

class _GeoLocatorScreenState extends State<GeoLocatorScreen> {

  Future<Position> _determinePosition() async{
    bool serviceEnabled;
    LocationPermission permission;

    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if(!serviceEnabled){
      return Future.error('LocationServices are Desabled');
    }
    permission = await Geolocator.checkPermission();
    if(permission == LocationPermission.denied){
      permission = await Geolocator.requestPermission();
      if(permission == LocationPermission.denied){
        return Future.error('Location Premission are denied');
      }
    }
    if(permission == LocationPermission.deniedForever){
      return Future.error(('Location Permission are Permanently denied,we cannot request permission'));
    }
    return  await Geolocator.getCurrentPosition();

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('GeoLocator and GeoCoder'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilledButton(onPressed: () => _determinePosition(),
                child: Text('Location')),
            FilledButton(onPressed: () async{
              var n = await Geolocator.getCurrentPosition();
              print(n.latitude);
              print(n.longitude);
            }, child: Text('Location')),

            FilledButton(onPressed: () async{
              List<Placemark> placemarks = await placemarkFromCoordinates(12.955482, 77.7002688);
              // print(placemarks[1]);
              print(placemarks[0].name);
              // print(placemarks[0].administrativeArea);
              // print(placemarks[0]);
            }, child: Text('Location'))

          ],
        ),
      ),
    );
  }
}
