import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:location/location.dart';

final locationServiceProvider =
    Provider<ContactLocationService>((ref) => const ContactLocationService());

class ContactLocationService {
  const ContactLocationService();

  Stream<LocationData> get stream => onLocationChanged(inBackground: true);

  /// 位置情報が許可されていない時に許可をリクエストする
  ///
  /// バックグラウンドでの位置情報取得を許可する
  void allowGeolocation() {
    Future(() async {
      if (!await isGPSEnabled() && !await isNetworkEnabled()) {
        return;
      }

      var permissionGranted = await getPermissionStatus();

      if (permissionGranted == PermissionStatus.denied) {
        await settingLocation();
        permissionGranted = await requestPermission();
        if (permissionGranted != PermissionStatus.authorizedAlways ||
            permissionGranted != PermissionStatus.authorizedWhenInUse) {
          return;
        }
      }
    });
  }

  Future<LocationData> getCurrentPosition() async {
    return await getLocation();
  }

  Future<void> settingLocation() async {
    await setLocationSettings(
      accuracy: LocationAccuracy.powerSave,
      rationaleMessageForGPSRequest: '位置情報を取得するためにGPSを有効にしてください',
      rationaleMessageForPermissionRequest: '位置情報を取得するために許可をお願いします',
    );
  }
}
