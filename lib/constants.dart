
import 'package:flutter/material.dart';

double getDeviceHeight(BuildContext context) => MediaQuery.of(context).size.height;
double getDeviceWidth(BuildContext context) => MediaQuery.of(context).size.width;

Widget sizeBox10R(BuildContext context) =>  SizedBox(height: getDeviceHeight(context) * 0.015,);
Widget sizeBox20R(BuildContext context) =>  SizedBox(height: getDeviceHeight(context) * 0.030,);
Widget sizeBox30R(BuildContext context) =>  SizedBox(height: getDeviceHeight(context) * 0.045,);
Widget sizeBox50R(BuildContext context) =>  SizedBox(height: getDeviceHeight(context) * 0.075,);

Widget sizeBox10() => const SizedBox(height: 20,);
Widget sizeBox20() => const SizedBox(height: 20,);
Widget sizeBox30() => const SizedBox(height: 30,);
Widget sizeBox50() => const SizedBox(height: 50,);

