import 'dart:html' as html;

import 'package:grat_session_storage_manager/grat_session_storage_manager.dart';

GratSessionStorageManager createSessionStorage() => SessionStorageWeb();

class SessionStorageWeb implements GratSessionStorageManager {
  @override
  bool isNull(String key) {
    return html.window.sessionStorage[key] == null ||
        html.window.sessionStorage[key] == 'null';
  }

  @override
  bool isNotNull(String key) {
    return !isNull(key);
  }

  @override
  bool isRedirectLoginValidate() {
    return isNotNull(GratSessionStorageManager.KEY_ACCESS_TOKEN) &&
        isNotNull(GratSessionStorageManager.KEY_PROVIDER);
  }

  @override
  String? get(String key) {
    return isNull(key) ? null : html.window.sessionStorage[key];
  }
}
