/*import 'package:mockito/mockito.dart';
import "package:faker/faker.dart";

import "package:flutter_application_1/domain/usecases/usecases.dart";

import 'package:flutter_application_1/data/http/http.dart';
import 'package:flutter_application_1/data/usecases/usecases.dart';

class HttpClientSpy extends Mock implements HttpClient {}

// arrange act assert
void main() {
  // exporting variables inside setup
  RemoteAuthentication sut;
  HttpClientSpy httpClient;
  String url;

  setUp(() {
    /* setup variables to all functions */
    httpClient = HttpClientSpy();
    url = faker.internet.httpUrl();
    sut = RemoteAuthentication(httpClient: httpClient, url: url);
  });
  test("should call HttpClient with correct URL", () async {
    final params = AuthenticationParams(
        email: faker.internet.email(), secret: faker.internet.password());
    //await sut.auth(params);
    // verify(httpClient.request(
    //   url: url,
    //   method: "post",
    //  body: {"email": params.email, "password": params.secret}));
  });

  test("should throw UnexpectedError if HttpClient returns 400", () async {
    final params = AuthenticationParams(
        email: faker.internet.email(), secret: faker.internet.password());
    /*try {
      await httpClient.request(
          url: anyNamed('url'),
          method: anyNamed('method'),
          body: anyNamed(body));
    } on HttpError {
      throw DomainError.unexpected  }*/
  });
}*/