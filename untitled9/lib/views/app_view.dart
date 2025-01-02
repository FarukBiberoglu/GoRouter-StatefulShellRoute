import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppView extends StatelessWidget {
  final  StatefulNavigationShell navigationShell ;
  const AppView({super.key,required this.navigationShell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarWidget(),
      body: navigationShell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: navigationShell.currentIndex,
        onDestinationSelected: navigationShell.goBranch,
        indicatorColor: Colors.transparent,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.face),
            label: 'Karakterler',
          ),
          NavigationDestination(
            icon: Icon(Icons.bookmark),
            label: 'Karakterler',
          ), NavigationDestination(
            icon: Icon(Icons.location_on),
            label: 'Karakterler',
          ), NavigationDestination(
            icon: Icon(Icons.menu),
            label: 'Karakterler',
          ),
        ],
      ),
    );
  }

  AppBar _appBarWidget() {
    return AppBar(
      title: Text('Rick And Morty',style: TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      ),),
      actions: [
        IconButton(onPressed: () {

        }, icon: Icon(Icons.settings))
      ],
    );
  }
}
