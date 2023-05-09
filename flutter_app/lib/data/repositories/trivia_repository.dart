import 'package:rest_api/rest_api.dart';

class TriviaRepostiory {
  RestApiService client = RestApiService(
    serverAddress: 'https://opentdb.com',
    connectTimeout: const Duration(seconds: 30),
    receiveTimeout: const Duration(seconds: 30),
  );
}
