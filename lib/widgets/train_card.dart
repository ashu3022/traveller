import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';

class TrainCard extends StatelessWidget {
  Widget _buildLeft() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "FROM",
                  style: TextStyle(fontSize: 12),
                ),
                Text("TO", style: TextStyle(fontSize: 12))
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Source_city",
                  style: TextStyle(
                    fontSize: 19,
                    //color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Dest_city",
                  style: TextStyle(
                    fontSize: 19,
                    color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 14,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("DEPT_TIME"),
                Text("ARRIVAL TIME"),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Container(
                margin: EdgeInsets.only(
                  left: 30,
                ),
                child: Container(
                  //width: ,
                  alignment: Alignment.center,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.alarm,
                        size: 20,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("duration"),
                      // Container(
                      //   width: 40,
                      //   height: 10,
                      //   child: ElevatedButton(
                      //       onPressed: () {}, child: Text("Add Flight")),
                      // )
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }

  Widget _buildRight() {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.train),
            SizedBox(
              height: 10,
            ),
            Text("Price"),
          ],
        ),
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
