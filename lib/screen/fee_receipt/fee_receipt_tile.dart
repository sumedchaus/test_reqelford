import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/screen/assessments/assessments_controller.dart';
import 'package:test_reqelford/screen/fee_receipt/fee_controller.dart';
import 'package:test_reqelford/widgets/color_button_with_icon.dart';
import 'package:test_reqelford/widgets/icon_with_text.dart';

class FeeReceiptTile extends StatelessWidget {
  final Welcome welcome;

  FeeReceiptTile(this.welcome);

  FeeController feeController = Get.find<FeeController>();
  String now = DateFormat().add_yMMMMEEEEd().format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      width: double.maxFinite,
                      child: Text(
                        now,
                        style: TextStyle(
                          // color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    IconWithText(
                        icon: Icon(
                          Icons.attach_money,
                          size: 16,
                        ),
                        text: "  ${welcome.price}"),
                    SizedBox(
                      height: 5,
                    ),
                    IconWithText(
                        icon: Icon(
                          Icons.receipt,
                          size: 16,
                          color: Colors.grey,
                        ),
                        text: "  ${welcome.id.toString()}"),
                    SizedBox(
                      height: 5,
                    ),
                    IconWithText(
                        icon: Icon(
                          Icons.food_bank,
                          size: 16,
                          color: Colors.grey,
                        ),
                        text: "  ${welcome.rating.toString()}"),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Total Paid : ${welcome.price}",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    ColorfulButtonWithIcon(
                        text: "Download Receipt",
                        textColor: Colors.purple,
                        buttonColor: Colors.deepPurple[100],
                        buttonIcon: Icon(
                          Icons.download,
                          color: Colors.purple,
                        ),
                        onTap: () {
                          feeController.onReceivedProgress();
                          feeController.download(welcome.imageLink, welcome.name);
                        }),

                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
