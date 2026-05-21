import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_e_commerce/data/repositories/user/user_repository.dart';
import 'package:flutter_e_commerce/features/personalization/models/user_model.dart';
import 'package:flutter_e_commerce/utils/popups/loaders.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/state_manager.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();

  final userRepository = Get.put(UserRepository());

  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final nameParts =
            UserModel.nameParts(userCredential.user?.displayName ?? '');
        final username =
            UserModel.generateUsername(userCredential.user?.displayName ?? '');

        final user = UserModel(
          id: userCredential.user?.uid ?? '',
          email: userCredential.user?.email ?? '',
          firseName: nameParts[0],
          lastName: nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
          username: username,
          phoneNumber: userCredential.user?.phoneNumber ?? '',
          profilePicture: userCredential.user?.photoURL ?? '',
        );

        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      TLoaders.warningSnackbar(
        title: 'Data not saved',
        message:
            'Something went wrong while saving your information. You can resave your data in your Profile.',
      );
    }
  }
}
