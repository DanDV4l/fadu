import 'package:fadu/core/ui/appwidgets/firebase_appwidget.dart';
import 'package:fadu/core/ui/shared/app_info_data.dart';
import 'package:flutter/material.dart';

AppInfoData appInfo = AppInfoData();

void main() => runApp(MaterialApp(
    title: appInfo.title,
    routes: appInfo.routes,
    home: const FirebaseAppWidget()));
