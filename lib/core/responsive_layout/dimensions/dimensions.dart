import 'package:flutter/cupertino.dart';
import '../media_queries/media_queries.dart';
class Dimensions{
  static double getSmallSize(BuildContext context)=>GetMediaQuery.getWidth(context)*0.02;
  static double getMediumSize(BuildContext context)=>GetMediaQuery.getWidth(context)*0.05;
  static double getLargeSize(BuildContext context)=>GetMediaQuery.getWidth(context)*0.08;
}