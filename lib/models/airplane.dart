import 'package:flutter/material.dart';

class Airplane {
  final String sourceName;
  final String dateDeparture;
  final String destinationName;
  final double price;
  final String classType = "ECO";
  final String way = "ONE_WAY";
  final String departureTime;
  final String arrivalTime;
  final int duration;
  final String airline;

  Airplane({
    required this.sourceName,
    required this.dateDeparture,
    required this.price,
    required this.arrivalTime,
    required this.duration,
    required this.destinationName,
    required this.departureTime,
    required this.airline
  });
}
