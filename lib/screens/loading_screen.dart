import 'package:climax_app/services/location.dart';
import 'package:flutter/material.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    //location.getCurrentLocation();
    //  APIKEY:'304be51e0052cf8ee0ec6b630adde55c0'
    getLocation();
  }

  void getLocation() async {
    Location location = Location();
    await location.getCurrentLocation();
    print(location.latitude);
    print(location.longitude);
  }

  void getData() {
    //get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[900],
        title: Text('WeatherApp'),
        centerTitle: true,
        elevation: 0.0,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            //Get the current location
            //getLocation();
          },
          child: Text('Get Location'),
        ),
      ),
    );
  }
}
