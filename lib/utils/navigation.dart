import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Navigation {
  static Future<T?> toScreen<T>({
    required BuildContext context,
    required Widget screen,
  }) async {
    return await Navigator.of(context).push<T>(
      MaterialPageRoute(builder: (_) => screen),
    );
  }
}
