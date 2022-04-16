import 'package:flutter/material.dart';
import 'package:timelines/timelines.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timeline"),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: FixedTimeline.tileBuilder(
            builder: TimelineTileBuilder.connectedFromStyle(
              contentsAlign: ContentsAlign.basic,
              oppositeContentsBuilder: (context, index) => Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text('opposite\ncontents'),
              ),
              contentsBuilder: (context, index) => Card(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
                color: Colors.blueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text('Contents'),
                ),
              ),
              connectorStyleBuilder: (context, index) => ConnectorStyle.solidLine,
              indicatorStyleBuilder: (context, index) => IndicatorStyle.outlined,
              itemCount: 11,
            ),
          ),
        ),
      ),
    );
  }
}
