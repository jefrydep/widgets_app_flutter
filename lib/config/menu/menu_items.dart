import 'package:flutter/material.dart';

class MenuItem {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItem>[
  MenuItem(
      title: 'Botones',
      subtitle: 'Varios botones en flutter',
      link: '/buttons',
      icon: Icons.smart_button_outlined),
  MenuItem(
      title: 'Tarjetas',
      subtitle: 'un contenedor estilizado',
      link: '/card',
      icon: Icons.credit_card),
  MenuItem(
      title: 'animacion',
      subtitle: 'animaciones',
      link: '/animated',
      icon: Icons.animation_rounded),
  MenuItem(
      title: 'app_tutorial',
      subtitle: 'tutoriales app',
      link: '/app_tutorial',
      icon: Icons.texture_outlined),
  MenuItem(
      title: 'Infiniti Scroll',
      subtitle: 'un scroll infinito',
      link: '/infiniti',
      icon: Icons.perm_device_information_outlined),
  MenuItem(
      title: 'Progress',
      subtitle: ' Progress indicator',
      link: '/progress',
      icon: Icons.pages_sharp),
  MenuItem(
      title: 'snackbar y dialogos',
      subtitle: 'Un Snackbar',
      link: '/snackbar',
      icon: Icons.shopping_cart_checkout_rounded),
  MenuItem(
      title: 'ui_controllls',
      subtitle: 'controlles UI',
      link: '/ui',
      icon: Icons.control_point_duplicate),
  MenuItem(
      title: 'counter_riverpood',
      subtitle: 'managmen state with Riverpood',
      link: '/counter',
      icon: Icons.connect_without_contact_sharp),
  MenuItem(
      title: 'theme changer',
      subtitle: 'theme changer provider with riverpood',
      link: '/theme_changer',
      icon: Icons.dark_mode_sharp),
];
