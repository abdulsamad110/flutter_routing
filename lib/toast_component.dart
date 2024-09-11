import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class ToastComponent {
  static void showToast(
    BuildContext context,
    String message, {
    bool makeToastPositionTop = false,
    bool extendDurationTime = false,
  }) {
    final fToast = FToast()..init(context);
    final Widget toast = Padding(
      padding: EdgeInsets.only(
        top: 12,
        left: 24,
        right: 24,
        bottom: makeToastPositionTop ? 12 : 34,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.black54,
        ),
        // width: MediaQuery.of(context).size.width * .9,
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Row(
              children: [
                Icon(
                  Icons.info,
                  color: Colors.white,
                ),
                SizedBox(width: 12),
              ],
            ),
            Flexible(
              child: Text(
                message,
                maxLines: 3,
                style: const TextStyle(
                  color: Colors.white,
                ),
                overflow: TextOverflow.clip,
              ),
            ),
          ],
        ),
      ),
    );

    fToast.showToast(
      child: toast,
      gravity: makeToastPositionTop ? ToastGravity.TOP : ToastGravity.BOTTOM,
      toastDuration: Duration(seconds: extendDurationTime ? 5 : 3),
    );
  }
}
