import 'package:equatable/equatable.dart';

///A representation of a user.
class User extends Equatable {
  ///User constructor.
  const User( {
    required this.email,
    required this.uid,
    this.name,
    this.phoneNumber,
    this.address,
    this.profileImage,
  });

  /// String [name] is the name of the user.
  final String? name;

  /// String [email]
  final String email;

  /// String [phoneNumber]
  final String? phoneNumber;

  /// String [address]
  final String? address;

  /// String [profileImage]
  final String? profileImage;

  /// String [uid].
  final String uid;

  @override
  List<Object?> get props => [
        name,
        email,
        phoneNumber,
        address,
        profileImage,
      ];
}
