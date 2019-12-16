import 'package:openapi/api_client.dart';
import 'package:openapi/auth/authentication.dart';

class OAuth implements Authentication {
  String _accessToken;

  OAuth({String accessToken}) : _accessToken = accessToken;

  @override
  void applyToParams(List<QueryParam> queryParams, Map<String, String> headerParams) {
    if (_accessToken != null) {
      headerParams["Authorization"] = "Bearer $_accessToken";
    }
  }

  set accessToken(String accessToken) => _accessToken = accessToken;
}
