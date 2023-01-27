import 'package:counter_app/models/models.dart';

class AuthenticationRepository {
  const AuthenticationRepository({this.user});

  final User? user;

  Future<User?> login() async {
    await Future<void>.delayed(const Duration(seconds: 2));

    return null;
  }

  Future<User?> signUp() async {
    return null;
  }
}
