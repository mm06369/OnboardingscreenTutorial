import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';
import 'package:todo_app/routes/route_name.dart';
import '../../config/asset_config.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool isLogoVisible = false;
  bool isFrameVisible = false;


  void navigateToNextPage()async {
      await Future.delayed(const Duration(milliseconds: 1200));
      Navigator.pushNamed(context, instruction);
    }

  @override
  void initState() {
    super.initState();
    loadAssets();
    navigateToNextPage();
  }

  Future<void> loadAssets() async {
    await Future.delayed(const Duration(milliseconds: 100));
    setState(() {
      isLogoVisible = true;
    });
    await Future.delayed(const Duration(milliseconds: 300));
    setState(() {
      isFrameVisible = true;
    });
  }
    final linearGradient = const LinearGradient(
      colors: [
        Color.fromRGBO(127, 53, 201, 1),
        Color.fromRGBO(56, 136, 243, 1),
      ],
      stops: [0, 1.0],
    );
  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Container(
        width: getDeviceWidth(context),
        height: getDeviceHeight(context),
        decoration: BoxDecoration(
          gradient: linearGradient
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedOpacity(
              opacity: isLogoVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Image.asset(AssetConfig.logo),
            ),
            AnimatedOpacity(
              opacity: isFrameVisible ? 1.0 : 0.0,
              duration: const Duration(milliseconds: 500),
              child: Image.asset(AssetConfig.planIt),
            )
          ],
        ),
      )
    );
  }
}
