import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../elements/homescreen_search_bar.dart';
import '../screens/constraints.dart';
import '../widgets/Homescreentopview.dart';

class Homescreen extends StatelessWidget {
  static const routeName = '/homescreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.menu, color: kPrimaryColor),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: ClipOval(
              child: Image.asset('assets/images/marry.png'),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Stack(
          alignment: Alignment.center,
          children: [
            HomeScreenTopBody(),
            Positioned(
              child: HomeScreenSearchBar(),
              top: ((MediaQuery.of(context).size.height -
                          MediaQuery.of(context).padding.top) *
                      0.4) -
                  ((MediaQuery.of(context).size.height +
                              -MediaQuery.of(context).padding.top) *
                          0.1) /
                      2 -
                  MediaQuery.of(context).padding.top * 0.2,
            )
          ],
        ),
      ),
    );
  }
}
