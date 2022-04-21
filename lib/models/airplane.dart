import 'package:flutter/material.dart';

class Airplane {
  final String sourceName;
  final DateTime dateDeparture;
  final String destinationName;
  final double price;
  final String classType = "ECO";
  final String way = "ONE_WAY";
  final DateTime departureTime;
  final DateTime arrivalTime;
  final DateTime duration;

  Airplane({
    required this.sourceName,
    required this.dateDeparture,
    required this.price,
    required this.arrivalTime,
    required this.duration,
    required this.destinationName,
    required this.departureTime,
  });
}
