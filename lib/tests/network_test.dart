import 'dart:async';
import 'package:flutter/material.dart';
import 'package:school_trip_app/services/network_connectivity_observer.dart';
import 'package:school_trip_app/utils/connectivity_observer.dart';

class NetworkTestScreen extends StatefulWidget {
  const NetworkTestScreen({super.key});

  @override
  State<NetworkTestScreen> createState() => _NetworkTestScreenState();
}

class _NetworkTestScreenState extends State<NetworkTestScreen> {
  final ConnectivityObserver _connectivityObserver =
      NetworkConnectivityObserver();

  var _status = Status.unavailable;

  StreamSubscription<Status>? _subscription;

  @override
  void initState() {
    super.initState();

    _subscription = _connectivityObserver.observe().listen((status) {
      setState(() {
        _status = status;
      });
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('네트워크 상태 : ${_status.name}'),
      ),
    );
  }
}
