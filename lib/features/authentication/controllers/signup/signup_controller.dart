import 'package:flutter/material.dart';
import 'package:flutter_e_commerce/data/repositories/authentication/authentication_repository.dart';
import 'package:flutter_e_commerce/data/repositories/user/user_repository.dart';
import 'package:flutter_e_commerce/features/authentication/screens/signup/verify_email.dart';
import 'package:flutter_e_commerce/features/personalization/models/user_model.dart';
import 'package:flutter_e_commerce/utils/constants/image_strings.dart';
import 'package:flutter_e_commerce/utils/helpers/network_manager.dart';
import 'package:flutter_e_commerce/utils/popups/full_screen_loader.dart';
import 'package:flutter_e_commerce/utils/popups/loaders.dart';
import 'package:get/get.dart';

class SignupController extends GetxController {
  static SignupController get instance => Get.find();

  // Variables
  final hidePassword = true.obs;
  final privacyPolicy = true.obs;
  final email = TextEditingController();
  final password = TextEditingController();
  final firseName = TextEditingController();
  final lastName = TextEditingController();
  final username = TextEditingController();
  final phoneNumber = TextEditingController();
  GlobalKey<FormState> signupFormKey = GlobalKey<FormState>();

  // Signup
  Future<void> signup() async {
    try {
      // Start Loading
      TFullScreenLoader.openLoadingDialog(
        'We are processing your information...',
        TImages.docerAnimation,
      );

      // Check internet connection
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) return;

      // Form validation
      if (!signupFormKey.currentState!.validate()) return;

      // Privacy policy check
      if (!privacyPolicy.value) {
        TLoaders.warningSnackbar(
            title: 'Accept Privacy Policy',
            message:
                'In order to create account, you must have to read and accept the Privacy Policy and Terms of Use.');
        return;
      }

      // Register user in FirebaseAuth and save user data in Firestore
      final userCredential =
          await AuthenticationRepository.instance.registerWithEmailAndPassword(
        email.text.trim(),
        password.text.trim(),
      );

      final newUser = UserModel(
        id: userCredential.user!.uid,
        firseName: firseName.text.trim(),
        lastName: lastName.text.trim(),
        username: username.text.trim(),
        email: email.text.trim(),
        phoneNumber: phoneNumber.text.trim(),
        profilePicture: '',
      );

      final userRepository = Get.put(UserRepository());
      await userRepository.saveUserRecord(newUser);

      // Show success message
      TLoaders.successSnackbar(
        title: 'Congratulations!',
        message:
            'Your account has been created! Verify your email to continue.',
      );

      // Move to varification screen
      Get.to(() => const VerifyEmailScreen());
    } catch (e) {
      // Handle errors here
      TLoaders.errorSnackbar(title: 'Oh Snap!', message: e.toString());
    } finally {
      // Stop Loading
      TFullScreenLoader.stopLoading();
    }
  }
}
