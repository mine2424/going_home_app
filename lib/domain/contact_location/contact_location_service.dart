import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

final locationServiceProvider =
    Provider<ContactLocationService>((ref) => const ContactLocationService());

class ContactLocationService {
  const ContactLocationService();

  static final Location _location = Location();

  Stream<LocationData> get stream => _location.onLocationChanged;

  /// 位置情報が許可されていない時に許可をリクエストする
  ///
  /// バックグラウンドでの位置情報取得を許可する
  void allowGeolocation() {
    Future(() async {
      if (!await _location.serviceEnabled()) {
        if (!await _location.requestService()) {
          return;
        }
      }

      var permissionGranted = await _location.hasPermission();

      if (permissionGranted == PermissionStatus.denied) {
        permissionGranted = await _location.requestPermission();
        if (permissionGranted != PermissionStatus.granted) {
          return;
        }
        _location.enableBackgroundMode(enable: true);
      }
    });
  }

  Future<LocationData> getCurrentPosition() async {
    return await _location.getLocation();
  }

  void settingLocation() {
    _location.changeSettings(
      accuracy: LocationAccuracy.powerSave,
      interval: 2000,
      distanceFilter: 5,
    );
  }
}

// above version ^5.0.0
// class ContactLocationService {
//   const ContactLocationService();
// 
//   Stream<LocationData> get stream => onLocationChanged(inBackground: true);
// 
//   /// 位置情報が許可されていない時に許可をリクエストする
//   ///
//   /// バックグラウンドでの位置情報取得を許可する
//   void allowGeolocation() {
//     Future(() async {
//       if (!await isGPSEnabled() && !await isNetworkEnabled()) {
//         return;
//       }
// 
//       var permissionGranted = await getPermissionStatus();
// 
//       if (permissionGranted == PermissionStatus.denied) {
//         await settingLocation();
//         permissionGranted = await requestPermission();
//         if (permissionGranted != PermissionStatus.authorizedAlways ||
//             permissionGranted != PermissionStatus.authorizedWhenInUse) {
//           return;
//         }
//       }
//     });
//   }
// 
//   Future<LocationData> getCurrentPosition() async {
//     return await getLocation();
//   }
// 
//   Future<void> settingLocation() async {
//     await setLocationSettings(
//       accuracy: LocationAccuracy.powerSave,
//       rationaleMessageForGPSRequest: '位置情報を取得するためにGPSを有効にしてください',
//       rationaleMessageForPermissionRequest: '位置情報を取得するために許可をお願いします',
//     );
//   }
// }
