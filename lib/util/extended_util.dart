import 'package:flutter/material.dart';

double pw(BuildContext context){
  return MediaQuery.of(context).size.width;
}

double ph(BuildContext context){
  return MediaQuery.of(context).size.height;
}

double bodyHeight(BuildContext context){
  return ph(context) - kToolbarHeight - MediaQueryData.fromView(View.of(context)).padding.top;
}
