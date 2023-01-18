import 'package:grat_session_storage_manager/grat_session_storage_manager.dart';

GratSessionStorageManager createSessionStorage() => WebSessionOnMobile();

class WebSessionOnMobile implements GratSessionStorageManager {
  final String message = "웹 환경만 지원합니다.";
  @override
  String? get(String key) {
    throw UnsupportedError(message);
  }

  @override
  bool isNotNull(String key) {
    throw UnsupportedError(message);
  }

  @override
  bool isNull(String key) {
    throw UnsupportedError(message);
  }

  @override
  bool isRedirectLoginValidate() {
    throw UnsupportedError(message);
  }
}
