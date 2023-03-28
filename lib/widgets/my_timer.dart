import 'dart:async';
import 'dart:math';
import 'package:componente_medidor_gauss/widgets/gauss.dart';
import 'package:flutter/material.dart';

class MyTimer extends StatefulWidget {
  const MyTimer({super.key});

  @override
  State<MyTimer> createState() => _MyTimerState();
}

class _MyTimerState extends State<MyTimer> {
  final GlobalKey<GaussState> _callRollBackKey = GlobalKey<GaussState>();
  double _randomNumber = 1;
  late Timer _timer;
  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(const Duration(seconds: 5), (timer) {
      _generateRandomNumber();
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _generateRandomNumber() {
    _randomNumber = Random().nextDouble() * 100;
    _callRollBackKey.currentState?.update(_randomNumber);
    //aqui actualizar valor del slider
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // initState();
    return Container(
      child: Gauss(key: _callRollBackKey,),
      
    );
  }
}
