import 'package:http/http.dart' as http;

class MockResponse implements http.BaseResponse {
  @override
  int? get contentLength => 100;

  @override
  Map<String, String> get headers => {'Auth': ''};

  @override
  bool get isRedirect => false;

  @override
  bool get persistentConnection => false;

  @override
  String? get reasonPhrase => 'reasonPhrase';

  @override
  http.BaseRequest? get request => throw UnimplementedError();

  @override
  int get statusCode => 200;
}
