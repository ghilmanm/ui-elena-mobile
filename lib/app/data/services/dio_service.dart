// import 'dart:convert';
// import 'package:dio/dio.dart';

// import 'cache_manager.dart';

// class DioService with CacheManager {
//   final Dio _dio = Dio(BaseOptions(
//     baseUrl: '$baseUrl',
//     connectTimeout: 5 * 1000, //5 Second
//     receiveTimeout: 5 * 1000, //5 Second
//   ));
//   final String basicAuth = 'Basic ${base64.encode(utf8.encode('admin:1234'))}';
//   final String apiKey = 'd4mr1@pp4';

//   Dio get instance {
//     _dio.interceptors.addAll(
//       [
//         LoggingInterceptor(),
//         InterceptorsWrapper(
//           onRequest: (options, handler) async {
//             options.headers["cookie"] = getCookie();
//             options.headers["authorization"] = basicAuth;
//             options.headers["X-API-KEY"] = apiKey;
//             options.headers["Authorization_Token"] = getToken();
//             return handler.next(options);
//           },
//         ),
//       ],
//     );
//     return _dio;
//   }

//   /* Dio dioInstance() {
//     Dio dio = Dio();

//     dio.interceptors.addAll([
//       LoggingInterceptor(),
//     ]);

//     return dio;
//   } */
// }
