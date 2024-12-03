import 'package:telephony/telephony.dart';

class SmsService {
  final Telephony telephony = Telephony.instance;

  // Function to request permissions
  Future<bool> requestSmsPermission() async {
    bool? permissionGranted = await telephony.requestSmsPermissions;
    return permissionGranted ?? false;
  }

  // Function to send an SMS with success/failure callbacks
  Future<void> sendSms(String recipient, String message) async {
    bool hasPermission = await requestSmsPermission();
    if (hasPermission) {
      telephony.sendSms(
        to: recipient,
        message: message,
        // Callback for successful SMS send
        statusListener: (SendStatus status) {
          if (status == SendStatus.SENT) {
            print("SMS Sent Successfully");
            // You can handle success in the UI or logic here
          } else if (status == SendStatus.DELIVERED) {
            print("SMS Delivered Successfully");
            // Handle delivery confirmation here
          } else if (status == SendStatus.DELIVERED) {
            print("SMS Failed to Send");
            // You can handle failure here, such as retrying
          }
        },
      );
    } else {
      print("SMS Permission not granted");
    }
  }
}
