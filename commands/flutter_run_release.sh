# Build Mode: release, Flavor Environment: prod

# ex) sh scripts/flutter_run_release.sh 84D51ACC-BDFB-4406-9901-C49CFE677156
cd "$(dirname "$0")/.." || exit
flutter run --release --flavor prod --dart-define=FLAVOR=prod -t lib/main_prod.dart -d $1