// ignore_for_file: constant_identifier_names

library grat_session_storage_manager;

import 'impls/session_storage_stub.dart'
    if (dart.library.io) 'impls/session_storage_mobile.dart'
    if (dart.library.html) "impls/session_storage_web.dart";

/// ### SessionStorage 사용 인터페이스
abstract class GratSessionStorageManager {
  static const String KEY_ACCESS_TOKEN = "access_token";
  static const String KEY_PROVIDER = "provider";

  factory GratSessionStorageManager() => createSessionStorage();

  /// ### session storage에서 value가 null인지 체크
  bool isNull(String key);

  /// ### session storage에서 value가 null이 아닌지 체크
  bool isNotNull(String key);

  /// ### 리다이렉트 방식으로 로그인이 진행되었는지 확인한다.
  bool isRedirectLoginValidate();

  /// ### session storage에서 값을 가져옵니다.
  String? get(String key);
}
