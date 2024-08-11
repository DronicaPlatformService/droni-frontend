import 'package:droni/shared/utils/custom_interceptor.dart';
import 'package:chopper/chopper.dart';
import 'package:droni/api/generated/client_index.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

final client = OpenAPI.create(
  baseUrl: Uri.parse(dotenv.env['DRONI_BASE_URL'] ?? ''),
  interceptors: [
    HttpLoggingInterceptor(),
    CustomInterceptor(),
  ],
);
