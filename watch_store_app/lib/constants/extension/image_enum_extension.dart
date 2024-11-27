import 'package:watch_store_app/constants/enum/image_enum.dart';

extension ImageExtension on ImageEnum {
  String get _imagePath => 'assets/image/';
  String get _svgPath => 'assets/svg/';

  String getPath(bool isImage) {
    return isImage
        ? '$_imagePath${toString().split('.').last}.png'
        : '$_svgPath${toString().split('.').last}.svg';
  }
}
