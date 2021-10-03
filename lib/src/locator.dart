import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:my_app/src/config/devices/app_Info.dart';
import 'package:my_app/src/features/common/app_bloc/bloc_observer.dart';
import 'package:my_app/src/network/domain_manager.dart';
import 'package:my_app/src/services/user_prefs.dart';
import 'package:my_app/src/theme/themes.dart';

Future initializeApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  SystemChrome.setSystemUIOverlayStyle(XTheme.barOverLayStyle);
  _locator();
  Bloc.observer = XBlocObserver();
  await Future.wait([
    // Firebase.initializeApp(),
    // AnalyticsService.instance.init(),
    AppInfo.initialize(),
    UserPrefs.instance.initialize(),
  ]);
}

void _locator() {
  GetIt.I.registerLazySingleton(() => DomainManager());
}
