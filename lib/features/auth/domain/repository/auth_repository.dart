import 'package:fpdart/fpdart.dart';
import '../../../../core/error/failures.dart';

abstract interface class AuthRepository {
  /// Returns Future<Either<Failure, String>> as we will connect supabase later which will be asynchronious. Either is a sealed class that represents a value of one of two possible types, [Left] or [Right]. Left is returned when some error occures and Right is returned when every things goes correctly

  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String password,
  });

  /// Returns Future<Either<Failure, String>> as we will connect supabase later which will be asynchronious. Either is a sealed class that represents a value of one of two possible types, [Left] or [Right]. Left is returned when some error occures and Right is returned when every things goes correctly

  Future<Either<Failure, String>> loginWithEmailPassword({
    required String email,
    required String password,
  });
}
