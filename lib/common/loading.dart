import 'package:flutter/material.dart';

import 'common_buttons.dart';
import 'common_styles.dart';

showLoading(BuildContext context) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      useRootNavigator: false,
      useSafeArea: false,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 150,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                CircularProgressIndicator(
                  strokeWidth: 1,
                  color: Colors.brown[900],
                  backgroundColor: Colors.brown[100],
                ),
                // Utils.getSizedBox(height: 20),
                Text(
                  "Loading",
                  style: CommonStyles.labelText15w500Blue(),
                ),
              ],
            ),
          ),
        );
      });
}

showErrorMessage(BuildContext context, String message, VoidCallback function) {
  return showDialog(
      context: context,
      barrierDismissible: false,
      useSafeArea: false,
      builder: (context) {
        return Dialog(
          child: SizedBox(
            height: 220,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    height: 150,
                    child: Padding(
                      padding: const EdgeInsets.only(top: 20.0, left: 15),
                      child: Text(
                        message,
                        style: CommonStyles.textField16w500red(),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: materialButtonCommon(
                        fun: () {
                          Navigator.of(context).pop();
                        },
                        text: "OK!",
                        elevation: 0),
                  ),
                ),
              ],
            ),
          ),
        );
      });
}
