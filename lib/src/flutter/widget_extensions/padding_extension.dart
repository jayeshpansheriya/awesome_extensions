import 'dart:ui';

import 'package:flutter/material.dart';

extension PaddingX on Widget {
  Padding paddingAll(double value, {Key? key}) =>
      Padding(key: key, padding: .all(value), child: this);

  Padding paddingFromViewPadding(
    ViewPadding padding,
    double devicePixelRatio, {
    Key? key,
  }) => Padding(
    key: key,
    padding: .fromViewPadding(padding, devicePixelRatio),
    child: this,
  );

  Padding paddingLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) => Padding(
    key: key,
    padding: .fromLTRB(left, top, right, bottom),
    child: this,
  );

  Padding paddingOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    Key? key,
  }) => Padding(
    key: key,
    padding: .only(top: top, left: left, bottom: bottom, right: right),
    child: this,
  );

  Padding paddingSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
    Key? key,
  }) => Padding(
    key: key,
    padding: .symmetric(vertical: vertical, horizontal: horizontal),
    child: this,
  );

  Padding paddingHorizontal(double value, {Key? key}) => Padding(
    key: key,
    padding: .symmetric(horizontal: value),
    child: this,
  );

  Padding paddingVertical(double value, {Key? key}) => Padding(
    key: key,
    padding: .symmetric(vertical: value),
    child: this,
  );

  Padding paddingSTEB(
    double start,
    double top,
    double end,
    double bottom, {
    Key? key,
  }) => Padding(
    key: key,
    padding: EdgeInsetsDirectional.fromSTEB(start, top, end, bottom),
    child: this,
  );

  Padding paddingStart(double start, {Key? key}) => Padding(
    padding: EdgeInsetsDirectional.only(start: start),
    child: this,
  );

  Padding paddingEnd(double end, {Key? key}) => Padding(
    padding: EdgeInsetsDirectional.only(end: end),
    child: this,
  );

  Padding paddingLeft(double value, {Key? key}) => Padding(
    key: key,
    padding: .only(left: value),
    child: this,
  );
  Padding paddingTop(double value, {Key? key}) => Padding(
    key: key,
    padding: .only(top: value),
    child: this,
  );
  Padding paddingRight(double value, {Key? key}) => Padding(
    key: key,
    padding: .only(right: value),
    child: this,
  );
  Padding paddingBottom(double value, {Key? key}) => Padding(
    key: key,
    padding: .only(bottom: value),
    child: this,
  );
}

extension EdgeInsetsX on EdgeInsets {
  EdgeInsets insetsAll(double value) => this + .all(value);

  EdgeInsets insetsLTRB(
    double left,
    double top,
    double right,
    double bottom, {
    Key? key,
  }) => this + .fromLTRB(left, top, right, bottom);

  EdgeInsets insetsOnly({
    double left = 0.0,
    double top = 0.0,
    double right = 0.0,
    double bottom = 0.0,
    Key? key,
  }) => this + .only(top: top, left: left, bottom: bottom, right: right);

  EdgeInsets insetsSymmetric({
    double vertical = 0.0,
    double horizontal = 0.0,
    Key? key,
  }) => this + .symmetric(vertical: vertical, horizontal: horizontal);

  EdgeInsets insetsHorizontal(double value, {Key? key}) =>
      this + .symmetric(horizontal: value);

  EdgeInsets insetsVertical(double value, {Key? key}) =>
      this + .symmetric(vertical: value);

  EdgeInsets insetsLeft(double value) => this + .only(left: value);
  EdgeInsets insetsTop(double value) => this + .only(top: value);
  EdgeInsets insetsRight(double value) => this + .only(right: value);
  EdgeInsets insetsBottom(double value) => this + .only(bottom: value);
}
