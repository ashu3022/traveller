import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

class FlightCard extends StatelessWidget {
  Widget _buildLeft() {
    return Container(
      child: Center(
        child: Text('LEFT PART'),
      ),
    );
  }

  Widget _buildRight() {
    return Container(
      child: Center(
        child: Icon(Icons.airplanemode_active),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TicketMaterial(
        height: 150,
        colorBackground: Colors.white,
        leftChild: _buildLeft(),
        rightChild: _buildRight(),
      ),
    );
  }
}
