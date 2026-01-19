import 'dart:async';

import 'package:flutter/material.dart';
Future<void> bootstrap(FutureOr<Widget> Function() builder,Future<void> Function() preloader) async {

  await preloader();
  runApp(await builder());
}