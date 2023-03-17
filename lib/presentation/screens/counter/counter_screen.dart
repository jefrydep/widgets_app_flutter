import 'package:buttons_app/presentation/providers/counter_provider.dart';
import 'package:buttons_app/presentation/providers/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CounterScreen extends ConsumerWidget {
  // aqui cambiar el stales  widget a consumer widget|
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // no es necesario ponerle widget ref
    final clickCounter = ref.watch(counterProvider);
    final isDarkMode = ref.watch(themeProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter Screen'),
        actions: [
          IconButton(
              onPressed: () {
                ref.read(themeProvider.notifier).update((state) => !isDarkMode);
              },
              icon: !isDarkMode
                  ? Icon(Icons.dark_mode_outlined)
                  : Icon(Icons.light_mode_outlined))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('$clickCounter'), const Text('Counter')],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // context.pop();
          // ref.read(counterProvider.notifier).state++;
          ref.read(counterProvider.notifier).update((state) => state + 1);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
