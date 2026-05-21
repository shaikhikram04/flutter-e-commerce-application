import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_e_commerce/features/personalization/controllers/user_controller.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/helpers/network_manager.dart';
import 'package:flutter_e_commerce/utils/popups/full_screen_loader.dart';
import 'package:flutter_e_commerce/utils/popups/loaders.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class LoginController extends GetxController {
  // Variables
  final rememberMe = false.obs;
  final hidePassword = true.obs;
  final localStorage = GetStorage();
  final email = TextEditingController();
  final password = TextEditingController();
  GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();
  final userController = Get.put(UserController());

  @override
  onInit() {
    email.text = localStorage.read('REMEMBER_ME_EMAIL') ?? '';
    password.text = localStorage.read('REMEMBER_ME_PASSWORD') ?? '';
    super.onInit();
  }

  // Email & Password Sign In
  Future<void> emailAndPasswordSignIn() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog(
          'Logging you in...', TImages.docerAnimation);

      // check network connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Form Validation
      if (!loginFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }

      // Save data if remember me is checked
      if (rememberMe.value) {
        localStorage.write('REMEMBER_ME_EMAIL', email.text.trim());
        localStorage.write('REMEMBER_ME_PASSWORD', password.text.trim());
      }

      // Login user with email & password
      await AuthenticationRepository.instance.loginWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      // Remove loading
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'Oh Snap!', message: e.toString());
    }
  }

  Future<void> googleSignIn() async {
    try {
      // Start loading
      TFullScreenLoader.openLoadingDialog(
        'Logging you in...',
        TImages.docerAnimation,
      );

      // check network connectivity
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }

      final userCredential =
          await AuthenticationRepository.instance.signInWithGoogle();

      await userController.saveUserRecord(userCredential);

      // Remove loading
      TFullScreenLoader.stopLoading();

      // Redirect
      AuthenticationRepository.instance.screenRedirect();
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackbar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
