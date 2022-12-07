import '../entities/entities.dart';

abstract class Authentication {
  Future<AccountEntity> auth(AuthenticationParams params);
}

class AuthenticationParams {
  final String email;
  final String secret;

  AuthenticationParams({required this.email, required this.secret});
}

// type of return comes before method
// future to async methods

//in programming languages, an abstract type is a type in a nominative type system that cannot be instantiated directly; a type that is not abstract – which can be instantiated – 
//is called a concrete type. Every instance of an abstract type is an instance of some concrete subtype