import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import 'dart:async';

class InternetConnection extends StatefulWidget {
  const InternetConnection({Key key}) : super(key: key);

  @override
  State<InternetConnection> createState() => _InternetConnectionState();
}

class _InternetConnectionState extends State<InternetConnection> {
  StreamSubscription subscription;
  var isDeviceConnected = false;
  bool isAlertSet = false;

  void initState() {
    getConnectivity();

    super.initState();
  }

  getConnectivity() {
    subscription = Connectivity().onConnectivityChanged.listen(
      (event) async {
        isDeviceConnected = await InternetConnectionChecker().hasConnection;

        ///check network connection (status)
        if (!isDeviceConnected && isAlertSet == false) {
          showDialogBox();

          setState(() => isAlertSet = true);
        }
      },
    );

    @override
    void dispose() {
      subscription.cancel();
      super.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  showDialogBox() => showDialog<String>(
        context: context,
        builder: (BuildContext context) => CupertinoAlertDialog(
            title: const Text("Ooops No Connection!"),
            content: const Text(
                'Please make sure you have a valid internet connection through your WIFI'
                'or cellular network.'),
            actions: <Widget>[
              TextButton(onPressed: () {}, child: const Text("Ok"))
            ]),
      );
}
