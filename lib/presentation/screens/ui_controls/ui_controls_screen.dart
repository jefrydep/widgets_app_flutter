import 'package:flutter/material.dart';

class UiControlsScreen extends StatelessWidget {
  const UiControlsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('UI_controls'),
      ),
      body: _UiControllsView(),
    );
  }
}

class _UiControllsView extends StatefulWidget {
  @override
  State<_UiControllsView> createState() => _UiControllsViewState();
}

enum Transportation { car, plane, boat, submarin }

class _UiControllsViewState extends State<_UiControllsView> {
  bool isDeveloper = true;
  Transportation selectedTransportation = Transportation.car;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SwitchListTile(
            title: const Text('Developoer MOde'),
            subtitle: const Text('Controles adicionales'),
            value: isDeveloper,
            onChanged: (value) {
              return setState(() {
                isDeveloper = !isDeveloper;
              });
            }),
        ExpansionTile(
          subtitle: Text('$selectedTransportation'),
          title: Text('Vehiculo de transporte'),
          children: [
            RadioListTile(
                title: const Text('by car'),
                subtitle: const Text('viajar por carro'),
                groupValue: selectedTransportation,
                value: Transportation.car,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.car;
                    })),
            RadioListTile(
                subtitle: const Text('Viajar por Avio'),
                title: const Text('By Plane'),
                groupValue: selectedTransportation,
                value: Transportation.plane,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.plane;
                    })),
            RadioListTile(
                subtitle: const Text('Viajar por Bote'),
                title: const Text('By Boat'),
                groupValue: selectedTransportation,
                value: Transportation.boat,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.boat;
                    })),
            RadioListTile(
                subtitle: const Text('Viajar por Submarino'),
                title: const Text('By Submarin'),
                groupValue: selectedTransportation,
                value: Transportation.submarin,
                onChanged: (value) => setState(() {
                      selectedTransportation = Transportation.submarin;
                    }))
          ],
        )
      ],
    );
  }
}
