import 'package:calculadora_imc_default_state_manager/widgets/imc_gauge_range.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class ImcSetstatePage extends StatelessWidget {
  const ImcSetstatePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Imc Setstate'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SfRadialGauge(
                axes: [
                  RadialAxis(
                    showLabels: false,
                    showAxisLine: false,
                    showTicks: false,
                    minimum: 12.5,
                    maximum: 47.9,
                    ranges: [
                      ImcGaugeRange(
                        color: Colors.blue,
                        start: 12.5,
                        end: 18.5,
                        label: 'Magreza',
                      ),
                      ImcGaugeRange(
                          color: Colors.green,
                          start: 18.5,
                          end: 24.5,
                          label: 'Normal'),
                      ImcGaugeRange(
                        color: Colors.yellow[600]!,
                        start: 24.5,
                        end: 29.9,
                        label: 'Sobrepeso',
                      ),
                      ImcGaugeRange(
                        color: Colors.red[500]!,
                        start: 29.9,
                        end: 39.9,
                        label: 'Obesidade I',
                      ),
                      ImcGaugeRange(
                        color: Colors.red[900]!,
                        start: 39.9,
                        end: 47.9,
                        label: 'Obesidade II (grave)',
                      ),
                    ],
                    pointers: const [
                      NeedlePointer(
                        value: 15,
                        enableAnimation: true,
                      )
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
