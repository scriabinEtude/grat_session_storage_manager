import 'package:grat_session_storage_manager/grat_session_storage_manager.dart';

void main() {
  GratSessionStorageManager sessionStorage = GratSessionStorageManager();
  sessionStorage.get("test");
}
