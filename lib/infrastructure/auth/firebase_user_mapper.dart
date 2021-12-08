import 'package:firebase_auth/firebase_auth.dart';
import 'package:todoey/domain/auth/custom_user.dart';
import 'package:todoey/domain/core/value_object.dart';

export 'package:firebase_auth/firebase_auth.dart';

extension FirebaseUserDomainX on User {
  CustomUser? toDomain() {
    final _ = FirebaseAuth.instance.currentUser;

    return _ == null
        ? null
        : CustomUser(
            id: UniqueId.fromUniqueString(uniqueId: _.uid),
            email: _.email!,
            name: _.displayName,
            photoUrl: _.photoURL,
          );
  }
}
