cd "$(dirname "$0")/.." || exit

flutter build ios lib/main_dev.dart --release --flavor dev --dart-define=FLAVOR=dev  
# fvm flutter build appbundle --release --flavor dev lib/main_dev.dart 