import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetworkStatus {
  static Future<bool> get isOnline async {
    return await InternetConnectionChecker().hasConnection;
  }
}