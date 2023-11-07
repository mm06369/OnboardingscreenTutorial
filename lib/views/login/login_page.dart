

import 'package:flutter/material.dart';
import 'package:todo_app/constants.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: getDeviceHeight(context),
            width: getDeviceWidth(context),
            child: Image.asset('assets/bg_design.png',
            fit: BoxFit.cover,
            ),
          ),

          Container(
        width: getDeviceWidth(context),
        height: getDeviceHeight(context),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromRGBO(125, 57, 203, 0.1),
              Color.fromRGBO(58, 135, 243, 0.1)
            ]
          ),
          // image: DecorationImage(
          //   // repeat: ImageRepeat.repeatX,
          //   image: AssetImage('assets/bg_design.png',),
          //   fit: BoxFit.cover,
          // )
        ),
      ),
      Column(
        children: [
          sizeBox50R(context),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/logo.png',
              width: 100,
              height: 100,
              ),
              Container(
                alignment: Alignment.center,
                child: Image.asset('assets/plan_it.png')),
            ],
          )
        ],
      )
        ],
      )
    ); 
  }
}