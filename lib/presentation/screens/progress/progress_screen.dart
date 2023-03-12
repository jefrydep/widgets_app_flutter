import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProgressScreen extends StatelessWidget {
  const ProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: Text('Progress screen'),
      ),
      
      body:Center(child: const _ProgressView()) ,
    );
  }
}

class _ProgressView extends StatelessWidget {
  const _ProgressView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: const[
        Text('Circular Progress indicator'),
        SizedBox(height: 30,),
        CircularProgressIndicator(backgroundColor: Colors.red,strokeWidth: 8,),
        SizedBox(height: 30,),
        CircularProgressIndicator(),
        SizedBox(height: 30,),
        Text('Circular progress controlado'),
        SizedBox(height: 30,),
        _ControlledCircularProgres()

      ],
    );
  }
}

class _ControlledCircularProgres extends StatelessWidget {
  const _ControlledCircularProgres({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: Stream.periodic(Duration(milliseconds: 300),(value){
        return(value * 2)/ 100;
      }).takeWhile((value) => value < 100),
      builder: (context, snapshot) {
        final progresValue = snapshot.data ?? 0;
        return Padding(
          padding: EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(value: progresValue,),
              SizedBox(width: 20,),
              Expanded(child: LinearProgressIndicator(value: progresValue,))
            ],
        
          ),
        );
      }
    );
  }
}