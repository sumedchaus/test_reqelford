import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/screen/assessments/assessments_controller.dart';
import 'package:test_reqelford/widgets/color_button_with_icon.dart';
import 'package:test_reqelford/widgets/icon_with_text.dart';

class AssessmentTile extends StatelessWidget {
  final Welcome welcome;

  AssessmentTile(this.welcome);

  AssessmentController assessmentController = Get.find<AssessmentController>();
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
                        "${welcome.name}",
                        style: TextStyle(
                            // color: Colors.black,
                            //   fontWeight: FontWeight.bold
                            ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      welcome.productType,
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    IconWithText(
                        icon: Icon(
                          Icons.calendar_today_outlined,
                          size: 15,
                          color: Colors.grey,
                        ),
                        text: "  $now"),
                    SizedBox(
                      height: 5,
                    ),
                    IconWithText(
                        icon: Icon(
                          Icons.watch_later_outlined,
                          size: 15,
                          color: Colors.grey,
                        ),
                        text: "  Submit Before"),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      ' $now',
                      style: TextStyle(color: Colors.grey, fontSize: 15),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    IconWithText(
                        icon: Icon(
                          Icons.error_outline,
                          size: 15,
                          color: Colors.red,
                        ),
                        text: " Not Yet / Submitted"),
                    SizedBox(
                      height: 5,
                    ),
                    IconWithText(
                        icon: Icon(
                          Icons.error_outline,
                          size: 15,
                          color: Colors.red,
                        ),
                        text: "Expired"),
                    SizedBox(
                      height: 10,
                    ),
                    ColorfulButtonWithIcon(
                        text: "Download",
                        textColor: Colors.purple,
                        buttonColor: Colors.deepPurple[100],
                        buttonIcon: Icon(
                          Icons.download,
                          color: Colors.purple,
                        ),
                        onTap: () {
                          assessmentController.onReceivedProgress();
                          assessmentController.download(
                              welcome.imageLink, welcome.name);
                        }),
                    ColorfulButtonWithIcon(
                        text: 'Upload Answer Sheet',
                        textColor: Colors.green,
                        buttonColor: Colors.greenAccent[100],
                        buttonIcon: Icon(Icons.remove_red_eye,color: Colors.green,),
                        onTap: () {
                          Get.defaultDialog(
                            content: Icon(
                              Icons.cancel_outlined,
                              size: 100,
                              color: Colors.red,
                            ),
                            title: "Message",
                            textCustom: "No Answer Sheet Uploaded",
                            textCancel: 'ok',
                          );
                        })
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
