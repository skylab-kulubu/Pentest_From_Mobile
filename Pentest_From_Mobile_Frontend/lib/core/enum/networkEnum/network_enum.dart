import 'package:connectivity_plus/connectivity_plus.dart';

enum NetworkConnectivityEnums {
  online,
  offline;

  static NetworkConnectivityEnums? checkConnectivity(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.bluetooth:
        return NetworkConnectivityEnums.offline;

      case ConnectivityResult.wifi:
        return NetworkConnectivityEnums.online;

      case ConnectivityResult.ethernet:
        return NetworkConnectivityEnums.offline;

      case ConnectivityResult.mobile:
        return NetworkConnectivityEnums.online;

      case ConnectivityResult.none:
        return NetworkConnectivityEnums.offline;

      case ConnectivityResult.vpn:
        return NetworkConnectivityEnums.offline;
    }
  }
}
