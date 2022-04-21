import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter_instagram_stories/flutter_instagram_stories.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import '../provider/firebase_options.dart';
import 'dart:io';

class ReviewsCard extends StatelessWidget {
  final String text;
  ReviewsCard(this.text);
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width * 0.98,
      //height: text.length <= 45 ? 20 : (text.length * 20.0) / 45,
      decoration: BoxDecoration(
        color: Colors.white,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Color(0xFF3F4168),
          fontSize: 15,
        ),
        textAlign: TextAlign.left,
      ),
    );
  }
}
