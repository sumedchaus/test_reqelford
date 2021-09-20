import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:downloads_path_provider_28/downloads_path_provider_28.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:path/path.dart' as path;
import 'package:test_reqelford/model/base_model.dart';
import 'package:test_reqelford/screen/fee_receipt/fee_service.dart';
import 'package:url_launcher/url_launcher.dart';


class FeeController extends GetxController {
  bool allowWriteFile = false;
  // String progress = "";
  Dio dio;
  FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin;


  List<Welcome> listData = List<Welcome>().obs;
  var _x;

  get x => _x;

  static get to => Get.find<FeeController>();

  @override
  void onInit() {
    FeeService.fetchData();
    super.onInit();
    dio = Dio();

    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    final android = AndroidInitializationSettings('@mipmap/ic_launcher');
    final iOS = IOSInitializationSettings();
    final initSettings = InitializationSettings(android, iOS);
    flutterLocalNotificationsPlugin.initialize(initSettings, onSelectNotification: _onSelectNotification
    );

  }



  Future<void> _onSelectNotification(String json) async {
    final obj = jsonDecode(json);

    if (obj['isSuccess']) {
      OpenFile.open(obj['filePath']);
    } else {
      Get.snackbar('Error', 'Error File Download');
      // showDialog(
      //   context: context,
      //   builder: (_) => AlertDialog(
      //     title: Text('Error'),
      //     content: Text('${obj['error']}'),
      //   ),
      // );
    }
  }
  Future<void> _showNotification(Map<String, dynamic> downloadStatus) async {
    final android = AndroidNotificationDetails(
        'channel id',
        'channel name',
        'channel description',
        priority: Priority.High,
        importance: Importance.Max
    );
    final iOS = IOSNotificationDetails();
    final platform = NotificationDetails(android, iOS);
    final json = jsonEncode(downloadStatus);
    final isSuccess = downloadStatus['isSuccess'];

    await flutterLocalNotificationsPlugin.show(
        0, // notification id
        isSuccess ? 'Success' : 'Failure',
        isSuccess ? 'File has been downloaded successfully!' : 'There was an error while downloading the file.',
        platform,
        payload: json
    );
  }
  Future<Directory> _getDownloadDirectory() async {
    if (Platform.isAndroid) {
      return await DownloadsPathProvider.downloadsDirectory;
    }

    // in this example we are using only Android and iOS so I can assume
    // that you are not trying it for other platforms and the if statement
    // for iOS is unnecessary

    // iOS directory visible to user
    return await getApplicationDocumentsDirectory();
  }
  Future<bool> _requestPermissions() async {
    var permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);

    if (permission != PermissionStatus.granted) {
      await PermissionHandler().requestPermissions([PermissionGroup.storage]);
      permission = await PermissionHandler().checkPermissionStatus(PermissionGroup.storage);
    }

    return permission == PermissionStatus.granted;
  }
  void onReceivedProgress(){
    Get.snackbar("Downloading", "Downloading Started");
  }
  Future<void> _startDownload(String savePath, String url) async {
    Map<String, dynamic> result = {
      'isSuccess': false,
      'filePath': null,
      'error': null,
    };

    try {
      final response = await dio.download(


        url,
        // listData[index].imageLink
        // fileUrl,
        savePath,




        // onReceiveProgress: _onReceiveProgress
      );
      result['isSuccess'] = response.statusCode == 200;
      result['filePath'] = savePath;
    } catch (ex) {
      result['error'] = ex.toString();
    } finally {
      await _showNotification(result);
    }
  }

  Future<void> download(String url, String fileName) async {
    final dir = await _getDownloadDirectory();
    final isPermissionStatusGranted = await _requestPermissions();
    fileName = "$fileName.jpg";
    if (isPermissionStatusGranted) {
      final savePath = path.join(dir.path, fileName);
      await _startDownload(savePath,url);
    } else {
      // handle the scenario when user declines the permissions
    }
  }


  Future<void> launchInBrowser(String url) async {
    if (await canLaunch(url)) {
      await launch(
        url,
        forceSafariVC: false,
        forceWebView: false,
        headers: <String, String>{'my_header_key': 'my_header_value'},
      );
    } else {
      throw 'Could not launch $url';
    }
  }

}

