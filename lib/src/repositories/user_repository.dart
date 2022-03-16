import 'package:dio/dio.dart';
import '../models/user_model.dart';
import '../models/pagination_filter.dart';

class UserRepository {
  Dio _dio;

  UserRepository(
    this._dio,
  );

  Future<List<UserModel>> findAll(PaginationFilter filter) {
    return _dio.get('/users', queryParameters: {
      'page': filter.page,
      'limit': filter.limit,
    }).then(
      (res) => res.data
          ?.map<UserModel>(
            (u) => UserModel.fromMap(u),
          )
          ?.toList(),
    );
  }
}
