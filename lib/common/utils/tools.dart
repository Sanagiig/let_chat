import 'package:flutter/foundation.dart';

void log(dynamic object) {
    if (kDebugMode) {
    if (object is Iterable) {
      for (var item in object) {
        print(item);
      }
    } else {
      print(object);
    }
  }
}
