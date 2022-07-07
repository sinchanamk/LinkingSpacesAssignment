
import 'package:assignmnt/common/utils.dart';
import 'package:flutter/material.dart';

import 'common_styles.dart';

Widget materialButtonCommon(
    {required VoidCallback fun, required String text, double? elevation}) {
  return MaterialButton(
    elevation: elevation,
    height: 30,
    minWidth: 60,
    child: Container(
      padding: const EdgeInsets.all(12),
      child: Center(
        child: Text(
          text,
          style: CommonStyles.labelText15w500White(),
        ),
      ),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 8, offset: Offset(1, -2))
          ]),
    ),
    onPressed: fun,
  );
}

Widget materialButtonCommonWithIcon(
    {required VoidCallback fun,
    required String text,
    required IconData iconData,
    double? elevation}) {
  return MaterialButton(
    elevation: 0,
    padding: const EdgeInsets.all(0),
    height: 30,
    minWidth: 60,
    child: Container(
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            iconData,
            color: Colors.white,
            size: 15,
          ),
          Utils.getSizedBox(width: 10),
          Center(
            child: Text(
              text,
              style: CommonStyles.labelText15w500White(),
            ),
          ),
        ],
      ),
      decoration: BoxDecoration(
          color: Colors.green,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
                color: Colors.black38, blurRadius: 8, offset: Offset(1, -2))
          ]),
    ),
    onPressed: fun,
  );
}
