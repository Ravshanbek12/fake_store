import 'package:fake_store/core/either/either.dart';
import 'package:fake_store/core/failure/failure.dart';
import 'package:fake_store/core/usecase/usecase.dart';


import '../../data/bloc/auth/authentication_bloc.dart';
import '../../data/repository/auth.dart';

class GetUserUseCase
    implements UseCase<AuthenticatedUserEntity, (String, String)> {
  final repository = AuthenticationRepositoryImpl();
  @override
  Future<Either<Failure, AuthenticatedUserEntity>> call(
      (String, String) params) {
    return repository.getUser(params.$1, params.$2);
  }
}
