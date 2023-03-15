import 'package:flutter/material.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Progress screen'),
      ),
      
      body:  Center(child: _ProgressView()) ,
    );
  }
}

class _ProgressView extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children:  [
        const Text('Circular Progress indicator'),
        const SizedBox(height: 30,),
        const CircularProgressIndicator(backgroundColor: Colors.red,strokeWidth: 8,),
        const SizedBox(height: 30,),
        const CircularProgressIndicator(),
        const SizedBox(height: 30,),
        const Text('Circular progress controlado'),
        const SizedBox(height: 30,),
        _ControlledCircularProgres()

      ],
    );
  }
}

class _ControlledCircularProgres extends StatelessWidget {
   

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(const Duration(milliseconds: 300),(value){
        return(value * 2)/ 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progresValue = snapshot.data ?? 0;
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progresValue,),
              const SizedBox(width: 20,),
              Expanded(child: LinearProgressIndicator(value: progresValue,))
            ],
        
          ),
        );
      }
    );
  }
}