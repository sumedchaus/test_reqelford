import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/widgets/colorful_buttons.dart';
import 'package:test_reqelford/widgets/icon_with_text.dart';
import 'assignment_controller.dart';

class AssignmentTile extends StatelessWidget {
  final Welcome welcome;

  AssignmentTile(this.welcome);

  AssignmentController assignmentController = Get.find<AssignmentController>();

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
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    AssignmentText(
                      textBackgroundColor: Colors.deepPurple[400],
                      title:
                          ' ${DateFormat('dd-MM-yyyy').format(DateTime.now())}',
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    AssignmentText(
                      title: "${welcome.name}",
                      textBackgroundColor: Colors.red[400],
                    ),
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              " ${welcome.category}",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Row(
                              children: [
                                IconWithText(
                                  icon: Icon(
                                    Icons.calendar_today_outlined,
                                    size: 15,
                                    color: Colors.grey,
                                  ),
                                  text:
                                      ' ${DateFormat('dd-MM-yyyy').format(DateTime.now())}',
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                IconWithText(
                                    icon: Icon(
                                      Icons.info_outline,
                                      size: 15,
                                      color: Colors.grey,
                                    ),
                                    text: " ${welcome.price}"),
                              ],
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            IconWithText(
                              icon: Icon(
                                Icons.error_outline,
                                size: 15,
                                color: Colors.redAccent,
                              ),
                              text: '  Submitted/Not Yet',
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: ColorfulButtons(
                                  text: 'Download',
                                  onTap: () {
                                    assignmentController.onReceivedProgress();
                                    assignmentController.download(
                                        welcome.imageLink, welcome.name);
                                  },
                                  buttonColor: Colors.purple[100],
                                  textColor: Colors.purple,
                                )),

                                SizedBox(
                                  width: 8,
                                ),
                                Expanded(
                                    child: ColorfulButtons(
                                  text: "Upload",
                                  textColor: Colors.blue,
                                  buttonColor: Colors.blue[100],
                                  onTap: () {},
                                )),
                                SizedBox(
                                  width: 8,
                                ),

                                Expanded(
                                    child: ColorfulButtons(
                                  buttonColor: Colors.green[100],
                                  text: 'View File',
                                  textColor: Colors.green,
                                  onTap: (){},
                                )),
                                // Expanded(
                                //     child: RaisedButton(
                                //   onPressed: () {},
                                //   child: Text(
                                //     "View File",
                                //     style: TextStyle(color: Colors.green),
                                //   ),
                                //   color: Colors.green[100],
                                // )),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
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

class AssignmentText extends StatelessWidget {
  final Color textBackgroundColor;
  final String title;

  AssignmentText({@required this.textBackgroundColor, @required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      color: textBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
