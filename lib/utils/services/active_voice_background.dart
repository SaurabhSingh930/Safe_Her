import 'dart:async';

import 'package:flutter_background_service/flutter_background_service.dart';

Future<void> initializeService() async{
  final service = FlutterBackgroundService();

  await service.configure(iosConfiguration: IosConfiguration(),
      androidConfiguration: AndroidConfiguration(
          onStart: onStart,
          autoStart: true, // This ensures the service starts automatically
          isForegroundMode: true));

  service.startService();
}


@pragma("vm:entry-point")
void onStart(ServiceInstance service){
  if(service is AndroidServiceInstance){
    service.on("setAsForeground").listen((event){
      service.setAsForegroundService();
    });

    service.on("setAsBackground").listen((event){
      service.setAsBackgroundService();
    });

    service.on("stopService").listen((event){
      service.stopSelf();
    });

    Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (service is AndroidServiceInstance) {
        bool isForeground = await service.isForegroundService();
        if (isForeground) {
          service.setForegroundNotificationInfo(
            title: "Women Safety",
            content: "Your safety service is running",
          );
        }
      }
    });

  }

}