import 'package:componente_medidor_gauss/widgets/my_timer.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Gauss extends StatefulWidget {
  const Gauss({
    super.key,
  });

  @override
  State<Gauss> createState() => GaussState();
}

class GaussState extends State<Gauss> {
  double sliderValue = 0;
  //Metodo de actualizacion
  void update(double value) {
    sliderValue = value;
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Slider(
            min: 0,
            max: 100,
            value: sliderValue,
            // divisions: 21,
            onChanged: (value) {
              update(value);
              
            },
          ),
          const SizedBox(
            height: 20,
          ),
          Center(
            child: SfLinearGauge(
              markerPointers: [LinearShapePointer(value: sliderValue)],
            ),
          ),
        ],
      ),
    );
  }
}
