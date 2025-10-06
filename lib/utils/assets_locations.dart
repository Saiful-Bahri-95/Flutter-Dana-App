import 'package:flutter/widgets.dart';

class AssetsLocations {
  static ImageProvider iconLocation(String iconName){
    final location = AssetImage('assets/icons/$iconName.png');
    return location;
  }
}