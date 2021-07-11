import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sendi_app_deliver/src/app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}
