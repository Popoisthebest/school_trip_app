import 'package:school_trip_app/utils/connectivity_observer.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

class NetworkConnectivityObserver implements ConnectivityObserver {
  final _connectivity = Connectivity();

  @override
  Stream<Status> observe() {
    return _connectivity.onConnectivityChanged.map((event) {
      switch (event) {
        case ConnectivityResult.wifi:
          return Status.available;
        case ConnectivityResult.ethernet:
          return Status.available;
        case ConnectivityResult.mobile:
          return Status.available;
        default:
          return Status.unavailable;
      }
    });
  }
}
