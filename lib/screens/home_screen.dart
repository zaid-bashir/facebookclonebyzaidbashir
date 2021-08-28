import 'package:facebookclone/config/palette.dart';
import 'package:facebookclone/data/data.dart';
import 'package:facebookclone/widgets/widgets.dart';
import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              "facebook",
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 30.0,
                fontWeight: FontWeight.w900,
                letterSpacing: -1.2,
              ),
            ),
            centerTitle: false,
            floating: true,
            actions: [
              CircleButton(
                icon: Icons.search,
                iconSize: 30.0,
                onPressed: () {
                  print("Search Button Pressed");
                },
              ),
              CircleButton(
                icon: MdiIcons.facebookMessenger,
                iconSize: 30.0,
                onPressed: () {
                  print("Messenger Button Pressed");
                },
              ),
            ],
          ),
          //Inside Slivers we can't use Container but to use that we must
          //wrap it inside SliverToBoxAdapter
          SliverToBoxAdapter(
            child: CreatePostContainer(
              currentUser: currentUser,
            ),
          ),
        ],
      ),
    );
  }
}
