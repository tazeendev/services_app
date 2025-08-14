import 'package:flutter/cupertino.dart';
import '../media_queries/media_queries.dart';
class Dimensions{
  static getSmallSize(BuildContext context)=>GetMediaQuery.getWidth(context)*0.02;
  static getMediumSize(BuildContext context)=>GetMediaQuery.getWidth(context)*0.05;
  static getLargeSize(BuildContext context)=>GetMediaQuery.getWidth(context)*0.08;
}