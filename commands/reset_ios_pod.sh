
cd "$(dirname "$0")/.." || exit
flutter clean
rm pubspec.lock
flutter pub get

cd ios
rm Podfile.lock
rm -rf Pods
rm -rf .symlinks
pod repo update
pod update

cd ..

flutter pub cache repair
flutter packages pub get
flutter pub get