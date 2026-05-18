import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_e_commerce/utils/formatters/formatter.dart';

class UserModel {
  final String id;
  final String firseName;
  final String lastName;
  final String username;
  final String email;
  final String phoneNumber;
  final String profilePicture;

  UserModel({
    required this.id,
    required this.firseName,
    required this.lastName,
    required this.username,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
  });

  String get fullName => '$firseName $lastName';

  String get formatedPhoneNumber => TFormatter.formatPhoneNumber(phoneNumber);

  static List<String> nameParts(fullName) => fullName.split(' ');

  static String generateUsername(String fullName) {
    final nameParts = UserModel.nameParts(fullName);
    String firstName = nameParts[0].toLowerCase();
    String lastName = nameParts.length > 1 ? nameParts[1].toLowerCase() : '';

    String camelCaseUsername =
        firstName + lastName[0].toUpperCase() + lastName.substring(1);
    String usernameWithPrefix = 'cwt_$camelCaseUsername';
    return usernameWithPrefix;
  }

  static UserModel empty() => UserModel(
        id: '',
        firseName: '',
        lastName: '',
        username: '',
        email: '',
        phoneNumber: '',
        profilePicture: '',
      );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firseName': firseName,
      'lastName': lastName,
      'username': username,
      'email': email,
      'phoneNumber': phoneNumber,
      'profilePicture': profilePicture,
    };
  }

  factory UserModel.fromMap(DocumentSnapshot<Map<String, dynamic>> document) {
    if (document.data() != null) {
      final data = document.data()!;
      return UserModel(
        id: document.id,
        firseName: data['firseName'],
        lastName: data['lastName'],
        username: data['username'],
        email: data['email'],
        phoneNumber: data['phoneNumber'],
        profilePicture: data['profilePicture'],
      );
    }
    return UserModel.empty();
  }
}
