import 'package:flutter/cupertino.dart';
import 'package:services_app/core/responsive_layout/media_queries/media_queries.dart';

class Orientations{
  static bool isPortrait(BuildContext context){
    return MediaQuery.of(context).orientation==Orientation.portrait;
  }
  static bool isLandscape(BuildContext context){
    return MediaQuery.of(context).orientation==Orientation.landscape;
  }
}