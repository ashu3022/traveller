import 'package:flutter/material.dart';
import 'package:ticket_material/ticket_material.dart';
import 'package:travel_app/models/airplane.dart';

class FlightCard extends StatelessWidget {
  Map<String, String> brandlogos = {
    "AI":
        "https://seekvectorlogo.com/wp-content/uploads/2017/12/air-india-vector-logo.png",
    "G8":
        "https://www.ftd.travel/book/admin/public/airlines/airline_logo/go-first-go-air-logo.jpg",
    "W2":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScJJ-xWbPuv2OTMzEsmR4O82VyGyx98WMv8bNUooN3c2x74iHidtPOkWYD7-5SGiH9b90&usqp=CAU",
    "SG":
        "http://4.bp.blogspot.com/-6YOY3SMN7kI/TwPF5jQYJqI/AAAAAAAAEAs/fR3TcoJHvzk/s1600/spicejet_logo.png",
    "HR":
        "https://travelandtourworld.com/wp-content/uploads/2013/05/hahn-air-logo.jpg",
    "H1":
        "https://i.pinimg.com/736x/c7/75/04/c77504ca3af4642b44a917d1144eb42e.jpg",
    "UK": "https://www.ghe.co.in/img/Partners/Vistara-Logo.png"
  };
  final Airplane a;
  FlightCard(this.a);
  Widget _buildLeft() {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            //fit: BoxFit.contain,
            //fit: BoxFit.values,
            //scale: 0.5,
            opacity: 0.8,
            image: NetworkImage(brandlogos[a.airline] as String),
          ),
        ),
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
                  a.sourceName,
                  style: TextStyle(
                    fontSize: 19,
                    //color: Colors.blue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  a.destinationName,
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
                Text(
                  a.departureTime.substring(11, 16),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  a.arrivalTime.substring(11, 16),
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
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
                      Text(
                        '${a.duration} m',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
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
            Icon(Icons.airplanemode_active),
            SizedBox(
              height: 10,
            ),
            Text(
              '₹${a.price.toStringAsFixed(0)}',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
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
