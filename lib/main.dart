import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:overlay_support/overlay_support.dart';
import 'package:push_notification_firebase/model/push_notification_model.dart';
import 'package:push_notification_firebase/notification_badge.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OverlaySupport(
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // late final FirebaseMessaging _messaging;
  // late int totalNotificationCounter;
  // PushNotification? _notificationInfo;

// Normal register
//   void registerNotification() async {
    // await Firebase.inilailizeApp();
    // _messaging = FirebaseMessaging.instance;

    // three type of state in notification
    // not determined (null), granted (true) and decline (false)

    // NotificationSettings settings = await _messaging.requestPermission(
    //   alert: true,
    //   badge: true,
    //   provisional: false,
    //   sound: true,
    // );

    /*if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      //print("USer granted the permission");
      // main message

      FirebaseMessaging.onMessage.listen((RemoteMessage message) {
        PushNotification notification = PushNotification(
          title: message.notification!.title,
          body: message.notification!.body,
          dataTitle: message.data['title'],
          dataBody: message.data['body'],
        );
        setState(() {
          totalNotificationCounter++;
          _notificationInfo = notification;
        });
        if (notification != null) {
          showSimpleNotification(
            Text(_notificationInfo!.title!),
            leading:
                NotificationBadge(totalNotification: totalNotificationCounter),
            subtitle: Text(_notificationInfo!.body!),
            background: Colors.cyan.shade700,
            duration: Duration(seconds: 2),
          );
        }
      });
    }*/
  // }

  // check the initail message that we receive
  /*checkForInitialMessage() async {
    RemoteMessage? initailMessage =
        await FirebaseMessaging.instance.getInitialMessage();
    if (initailMessage != null) {
      PushNotification notification = PushNotification(
        title: initailMessage.notification!.title,
        body: initailMessage.notification!.body,
        dataTitle: initailMessage.data['title'],
        dataBody: initailMessage.data['body'],
      );
      setState(() {
        totalNotificationCounter++;
        _notificationInfo = notification;
      });
    }
  }*/

  // @override
  // void initState() {
  //   // when app is in background
  //   FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
  //     PushNotification notification = PushNotification(
  //       title: message.notification!.title,
  //       body: message.notification!.body,
  //       dataTitle: message.data['title'],
  //       dataBody: message.data['body'],
  //     );
  //     setState(() {
  //       totalNotificationCounter++;
  //       _notificationInfo = notification;
  //     });
  //   });
  //   // normal notification
  //   registerNotification();
  //   // when app is in terminated state
  //   checkForInitialMessage();
  //   totalNotificationCounter = 0;
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Push Notification"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              "Flutter Push Notification",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, color: Colors.black),
            ),
            SizedBox(
              height: 12,
            ),
            // showing notification Badge which will count
            // the total notification that we receive

            // NotificationBadge(totalNotification: totalNotificationCounter),
            // // if notificationInfo is not null
            // _notificationInfo != null
            //     ? Column(
            //         children: [
            //           Text(
            //               "Title: ${_notificationInfo!.dataTitle ?? _notificationInfo!.title}")
            //         ],
            //       )
            //     : Container(),
          ],
        ),
      ),
    );
  }
}
