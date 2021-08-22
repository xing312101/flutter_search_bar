library search_bar;

// import 'dart:async';
// import 'package:flutter/services.dart';

class SearchBar {
  static final Map<String, SearchBar> _instances = Map<String, SearchBar>();

  // static const MethodChannel _channel = const MethodChannel('check');
  // static Future<String?> get platformVersion async {
  //   final String? version = await _channel.invokeMethod('getPlatformVersion');
  //   return version;
  // }

  factory SearchBar(String scope) {
    if (!_instances.containsKey(scope) || null == _instances[scope]) {
      _instances[scope] = new SearchBar._internal(scope);
    }

    return _instances[scope]!;
  }

  SearchBar._internal(String scope);

}