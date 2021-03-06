import 'package:flutter/material.dart';
import 'package:flutter_aspk_tembakau/constants/colors.dart';
import 'package:flutter_aspk_tembakau/constants/route.dart';
import 'package:flutter_aspk_tembakau/enums/menu_action.dart';
import 'package:flutter_aspk_tembakau/functions/logout_dialogue.dart';
import 'package:flutter_aspk_tembakau/services/auth/auth_service.dart';
import 'package:flutter_aspk_tembakau/widgets/product_information.dart';

class InventoryPage extends StatefulWidget {
  const InventoryPage({Key? key}) : super(key: key);

  @override
  State<InventoryPage> createState() => _InventoryPageState();
}

class _InventoryPageState extends State<InventoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myGreen,
      appBar: AppBar(
        elevation: 0,
        title: const Text('Item Gudang'),
        actions: [
          PopupMenuButton<MenuAction>(
            icon: const Icon(Icons.more_rounded),
            onSelected: (value) async {
              switch (value) {
                case MenuAction.logout:
                  final shouldLogout = await showLogooutDialogue(context);
                  if (shouldLogout) {
                    await AuthService.firebase().logOut();
                    Navigator.of(context).pushNamedAndRemoveUntil(
                      loginRoute,
                      (_) => false,
                    );
                  }
              }
            },
            itemBuilder: (context) {
              return [
                const PopupMenuItem<MenuAction>(
                    value: MenuAction.logout, child: Text('Logout'))
              ];
            },
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                settingsRoute,
              );
            },
            icon: const Icon(Icons.settings),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: myBrown,
        foregroundColor: Colors.black,
        child: const Icon(Icons.add),
        onPressed: () {
          Navigator.of(context).pushNamed(newInventoryRoute);
        },
      ),
      body: const UserInformation(),
    );
  }
}
