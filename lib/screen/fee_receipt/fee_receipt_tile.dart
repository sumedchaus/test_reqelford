import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/widgets/icon_with_text.dart';

class FeeReceiptTile extends StatelessWidget {
  String now = DateFormat().add_MMMEd().format(DateTime.now());
 Welcome welcome = Welcome();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(now),
          IconWithText(icon: Icon(Icons.cake_outlined), text: "${welcome.price}"),
          IconWithText(icon: Icon(Icons.receipt), text: welcome.id.toString())

        ],
      ),
    );
  }
}
