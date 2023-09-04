import 'package:http/http.dart' as http;
import 'package:http_interceptor/http_interceptor.dart';

import 'package:flutter_webapi_first_course/services/http_interceptors.dart';

class WebClient {
  static const String url = 'http://localhost:80/';

  http.Client client = InterceptedClient.build(
    interceptors: [LoggingInterceptor()],
    requestTimeout: const Duration(seconds: 5),
  );
}
