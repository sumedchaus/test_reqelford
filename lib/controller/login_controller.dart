import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:test_reqelford/model/loginModel.dart';
import 'package:test_reqelford/screen/dashboard_screen.dart';


class LoginController extends GetxController{
  LoginModel loginModel = LoginModel();
  TextEditingController userNameEditingController;
  TextEditingController passwordEditingController;
  final colorBool = false.obs;



  void loginAuth(){
    var userName = userNameEditingController;
    var password = passwordEditingController;

    if(userName.text.isEmpty){
      Get.snackbar('Failed', 'UserName Required');
      return;
    }
    if(password.text.isEmpty){
      Get.snackbar('Failed', 'Password Required');
      return;
    }
    if(password.text.length  < 4){
      Get.snackbar('Failed', 'InValid Password');

    }
    else{
      loginModel.userName = userName.text;
      loginModel.password = password.text;
      print(loginModel.userName);
      print(loginModel.password);
      Get.toNamed(DashBoard.id);
    }
  }

  @override
  void onInit() {
    super.onInit();
    userNameEditingController = TextEditingController();
    passwordEditingController = TextEditingController();
  }


}