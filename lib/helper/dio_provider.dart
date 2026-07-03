import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:leave_request_app/constants/app_constant.dart';
import 'package:leave_request_app/helper/auth_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';

@Riverpod(keepAlive: true)
Dio dio(Ref ref) {
  final dio = Dio(
    BaseOptions(
      baseUrl: AppConstant.baseUrl,
      connectTimeout: Duration(milliseconds: 10000),
      receiveTimeout: Duration(milliseconds: 10000),
      headers: {
        'Accept': 'application/json',
        'Content-Type': 'application/json',
      },
    ),
  );

  dio.interceptors.add(
    InterceptorsWrapper(
      onRequest: (options, handler) async {
        final storage = ref.watch(authStorageServiceProvider);
        String? authToken = storage.getToken();

        if (authToken != null) {
          options.headers['Authorization'] = 'Bearer $authToken';
        }

        return handler.next(options);
      },
    ),
  );

  return dio;
}
