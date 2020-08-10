import 'package:rxdart_login/src/services/response.dart';

class Api {
  bool _success = false;

  Future<LoginResponse> login(String user, String password) async {
    if (user == 'admin' && password == "1234") _success = true;

    final response = _success
        ? SuccessResponse('Success!')
        : ErrorResponse("Error handling");
    _success = !_success;
    return Future.delayed(Duration(seconds: 4), () => response);
  }
}
