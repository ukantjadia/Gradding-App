import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _emailIdLogin = '';
  String get emailIdLogin => _emailIdLogin;
  set emailIdLogin(String _value) {
    _emailIdLogin = _value;
  }

  String _mobileNoLogin = '';
  String get mobileNoLogin => _mobileNoLogin;
  set mobileNoLogin(String _value) {
    _mobileNoLogin = _value;
  }

  bool _newOtpSend = false;
  bool get newOtpSend => _newOtpSend;
  set newOtpSend(bool _value) {
    _newOtpSend = _value;
  }

  String _CountryCode = '';
  String get CountryCode => _CountryCode;
  set CountryCode(String _value) {
    _CountryCode = _value;
  }

  String _password = '';
  String get password => _password;
  set password(String _value) {
    _password = _value;
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
