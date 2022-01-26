import 'package:flutter/material.dart';

/* Widget addVerticalSpace(double height) {
  return SizedBox(
    width: double.infinity,
    height: height,
    child:
        const DecoratedBox(decoration: const BoxDecoration(color: Colors.grey)),
  );
} */

Widget addVerticalline(double width) {
  return Container(
    color: Colors.black,
    child: SizedBox(
      width: width,
      height: double.infinity,
    ),
  );
}

Widget addHorizontalline(double height) {
  return Container(
    color: Colors.black,
    child: SizedBox(
      height: height,
      width: double.infinity,
    ),
  );
}

Widget addline(double width, double height) {
  return Container(
    height: height,
    width: width,
    color: Colors.black,
  );
}

Widget addVerticalSpace(double height) {
  return SizedBox(
    width: double.infinity,
    height: height,
  );
}

Widget addHorizontalSpace(double width) {
  return SizedBox(width: width);
}
