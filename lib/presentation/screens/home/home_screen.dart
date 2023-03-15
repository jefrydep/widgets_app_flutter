import 'package:buttons_app/config/menu/menu_items.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatelessWidget {
  static const String name = 'home_screen';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home View'),
      ),
      body:   _HomeView(),
    );
  }
}

class _HomeView extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: appMenuItems.length,
      itemBuilder: (BuildContext context, int index) {
        final menuItems = appMenuItems[index];
        final colors = Theme.of(context).colorScheme;
        return ListTile(
          leading: Icon(
            menuItems.icon,
            color: colors.primary,
          ),
          trailing: const Icon(Icons.arrow_back_ios),
          title: Text(menuItems.title),
          subtitle: Text(menuItems.subtitle),
          onTap: () {
            context.push(menuItems.link);
            // context.pushNamed(HomeScreen.name)
          },
        );
      },
    );
  }
}
