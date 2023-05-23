import 'package:flutter/material.dart';
import 'package:bluetooth_enable_fork/bluetooth_enable_fork.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                  onPressed: () {
                    BluetoothEnable.enableBluetooth;
                  },
                  child: Text("Enable BLE")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    BluetoothEnable.silentEnableBluetooth;
                  },
                  child: Text("Silent Enable BLE")),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    BluetoothEnable.disableBluetooth;
                  },
                  child: Text("Disable BLE")),
            ],
          ),
        ),
      ),
    );
  }
}
