import 'package:fake_store/core/either/either.dart';
import 'package:fake_store/core/failure/failure.dart';
import 'package:fake_store/core/usecase/usecase.dart';
import 'package:fake_store/features/login/data/repository/auth.dart';

import '../../data/bloc/auth/authentication_bloc.dart';

class GetUserUseCase
    implements UseCase<AuthenticatedUserEntity, (String, String)> {
  final repository = AuthenticationRepositoryImpl();
  @override
  Future<Either<Failure, AuthenticatedUserEntity>> call(
      (String, String) params) {
    return repository.getUser(params.$1, params.$2);
  }
}
