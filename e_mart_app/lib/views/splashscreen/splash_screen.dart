import 'package:e_mart_app/constants/Colors/colors.dart';
import 'package:e_mart_app/views/auth_screens/login_screen.dart';
import 'package:e_mart_app/widgets_common/applogo_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  changeScreen(){
    Future.delayed(const Duration(seconds: 2),(){
      Get.to(() => const LoginScreen());
    });
  }

  @override
  void initState() {
    changeScreen();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 220),
            applogoWidget(140, 140),
            apptitleWidget(60, 170),
            const Text(
              "version 1.0.0",
              style: TextStyle(fontSize: 15, color: MainColor),
            ),
            const Spacer(),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("@design by ",
                    style: TextStyle(fontSize: 15, color: MainColor)),
                Text(
                  "NBPT",
                  style: TextStyle(fontSize: 17, color: MainColor, fontWeight: FontWeight.bold),
                )
              ],
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
