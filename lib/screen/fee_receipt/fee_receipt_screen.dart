import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/screen/fee_receipt/fee_controller.dart';
import 'package:test_reqelford/screen/fee_receipt/fee_receipt_tile.dart';
import 'package:test_reqelford/widgets/my_drawer.dart';



class FeeReceiptScreen extends StatelessWidget {
  static final String id = '/FeeReceiptScreen';
  // String now = DateFormat("dd-MM-yyyy").format(DateTime.now());




  @override
  Widget build(BuildContext context) {
    return Scaffold(
        endDrawer: MyDrawer(),
        appBar: AppBar(
          title: Text(
            "Fee Receipts",
            style: TextStyle(color: Colors.black),
          ),
          iconTheme: IconThemeData(color: Colors.black),
          backgroundColor: Colors.deepPurple[100],
        ),
        body:

        GetX<FeeController>(
          init: FeeController(),
          builder: (feeController) =>
              ListView.builder(
                itemCount: feeController.listData.length,

                itemBuilder: (context,index){ return Container(
                  child: FeeReceiptTile(feeController.listData[index]

                  ),
                ); },

              ),

        ),
    );
  }
}

