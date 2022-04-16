import 'package:flutter/material.dart';
import 'location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'dart:math';
import 'package:travel_app/services/weather.dart';
import 'package:lottie/lottie.dart';
import 'package:travel_app/utils/constants.dart';
import 'package:flutter/services.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _LoadingScreenState();
  }
}

class _LoadingScreenState extends State<LoadingScreen>
    with TickerProviderStateMixin {
  late final AnimationController _controller;
  int index = 0;
  int start = 6;

  bool _isinit = false;
  var weatherData;

  @override
  void initState() {
    super.initState();
    getLocationData();
    index = Random().nextInt(4) + 1;
    _controller = AnimationController(vsync: this);
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        setState(() {
          index++;
          _controller.value = 0;
        });
      }
    });
  }

  void getLocationData() async {
    weatherData = await WeatherModel().getLocationWeather();
    setState(() {
      _isinit = true;
    });
    // Navigator.push(
    //   context,
    //   MaterialPageRoute(
    //     builder: (context) {
    //       return LocationScreen(
    //         locationWeather: weatherData,
    //       );
    //     },
    //   ),
    // );
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = (MediaQuery.of(context).size.width);

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: kTransparent,
    ));

    return _isinit
        ? LocationScreen(
            locationWeather: weatherData,
          )
        : Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  startColor[index % animations.length],
                  endColor[index % animations.length]
                ],
              ),
            ),
            child: Center(
              child: Lottie.asset(
                'assets/json/${animations[index % animations.length]}', //oi yaha pr /jason hat gaya shayd sai kar lena
                width: (screenWidth - ((screenWidth / 100) * 30)),
                height: 200,
                repeat: false,
                animate: true,
                controller: _controller,
                onLoaded: (animations) {
                  _controller
                    ..duration = (animations.duration * 10)
                    ..forward();
                },
              ),
            ),
          );
  }
}
/* Center(
        child: SpinKitDoubleBounce(
          color: Colors.white,
          size: 100.0,
        ),
      ), */