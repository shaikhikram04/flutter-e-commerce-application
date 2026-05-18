import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/app.dart';
import 'package:flutter_e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_e_commerce/firebase_options.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/utils.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  //? Ensure Flutter binding is initialized
  final widgetsBinding = WidgetsFlutterBinding.ensureInitialized();

  //? Initialize local storage
  await GetStorage.init();

  //? Initialize splash screen
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  //? Initialize Firebase
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform)
      .then(
    (value) => Get.put(AuthenticationRepository()),
  );

  runApp(const MyApp());
}
