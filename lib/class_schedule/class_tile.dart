import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/screen/assignment/assignment_controller.dart';


class ClassTile extends StatelessWidget {
  final Welcome welcome;

  ClassTile(this.welcome);

  final AssignmentController assignmentController =
      Get.find<AssignmentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              welcome.name,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Text(
                              welcome.brand.toString(),
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
                              text: '  45 min Duration',
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: ElevatedButton(
                                    onPressed: () {
                                      assignmentController
                                          .launchInBrowser(welcome.imageLink);
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors.purple[200],
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 50, vertical: 20),
                                      textStyle: TextStyle(
                                        color: Colors.white,
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Icon(
                                          Icons.forward,
                                          color: Colors.deepPurple,
                                        ),
                                        Text(
                                          "Join Class Room",
                                          style: TextStyle(
                                              color: Colors.deepPurple,
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
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

class IconWithText extends StatelessWidget {
  final Icon icon;
  final String text;

  IconWithText({@required this.icon, @required this.text});

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        children: [
          WidgetSpan(child: icon),
          TextSpan(
            text: text,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
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
