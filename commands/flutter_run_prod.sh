# Build Mode: debug, Flavor Environment: prod

cd "$(dirname "$0")/.." || exit
flutter run --debug --flavor prod --dart-define=FLAVOR=prod -t lib/main_prod.dart -d $1