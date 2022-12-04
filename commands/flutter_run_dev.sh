# Build Mode: debug, Flavor Environment: devで実行

cd "$(dirname "$0")/.." || exit
flutter run --debug --flavor dev --dart-define=FLAVOR=dev -t lib/main_dev.dart -d $1

