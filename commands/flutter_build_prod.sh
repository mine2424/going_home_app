cd "$(dirname "$0")/.." || exit

flutter build ios lib/main_prod.dart --release --flavor prod --dart-define=FLAVOR=prod
flutter build appbundle --release --flavor prod lib/main_prod.dart 