
import 'package:flutter/material.dart';
import 'package:settings_ui/settings_ui.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key, }) : super(key: key);
  

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Settings"),
      ),
      body: SettingsList(
        sections: [
          SettingsSection(
            title: const Text('Section'),
            tiles: [
              SettingsTile(
                title: const Text('Language'),
                leading: const Icon(Icons.language),
                onPressed: (BuildContext context) {},
              ),
              SettingsTile.switchTile(
                initialValue: false,
                title: const Text('Use fingerprint'),
                leading: const Icon(Icons.fingerprint),
                onToggle: (bool value) {},
              ),
            ],
          ),
        ],
      )
    );
  }
}