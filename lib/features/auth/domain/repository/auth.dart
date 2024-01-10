import 'package:fake_store/core/either/either.dart';
import 'package:fake_store/core/failure/failure.dart';


import '../../data/bloc/auth/authentication_bloc.dart';

abstract class AuthenticationRepository {
  Future<Either<ServerFailure, AuthenticatedUserEntity>> getUser(String username, String password);
}