enum Flavor {
  DEV,
  PROD,
}

class F {
  static Flavor? appFlavor;

  static String get name => appFlavor?.name ?? '';

  static String get title {
    switch (appFlavor) {
      case Flavor.DEV:
        return 'going_home_app_dev';
      case Flavor.PROD:
        return 'going_home_app_prod';
      default:
        return 'title';
    }
  }

}
