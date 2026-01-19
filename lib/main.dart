import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'bootstrap.dart';
import 'dependency_manager/injectable.dart';
import 'firebase_options.dart';
import 'home.dart';

void main() => bootstrap(() => const AppHome(), () async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load();
  configureDependencies();
  unawaited(
    Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform),
  );
});
