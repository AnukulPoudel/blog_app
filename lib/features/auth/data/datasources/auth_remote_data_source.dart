import 'package:blog_app/core/error/exceptions.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract interface class AuthRemoteDataSource {
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<String> signInWithEmailPassword({
    required String email,
    required String password,
  });
}

/// AuthRemoteDataSourceImplementation
class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  // Accepting supabase clent in a parameterized constructor because this way dependency is not created between AuthRemoteDataSourceImpl class and Supabase [clean code]
  final SupabaseClient supabaseClient;
  const AuthRemoteDataSourceImpl({required this.supabaseClient});

  @override
  Future<String> signInWithEmailPassword({
    required String email,
    required String password,
  }) {
    // TODO: implement signInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<String> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  }) async {
    try {
      final response = await supabaseClient.auth
          .signUp(password: password, email: email, data: {
        'name': name,
      });
      if (response.user == null) {
        // throw our own exception
        throw const ServerException("User is null!");
      }
      return response.user!.id;
    } catch (e) {
      throw ServerException(e.toString());
    }
  }
}
