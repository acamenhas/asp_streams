import 'package:asp/asp.dart';
import 'package:asp2/src/features/test/test_state.dart';
import 'package:flutter/material.dart';

class TestPage extends StatefulWidget {
  const TestPage({super.key});

  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    loadCircuits();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final (_circuits, _circuitsLoading) =
        context.select(() => (circuits.value, circuitsLoading.value));

    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                for (var item in _circuits) Text(item.name!),
              ],
            ),
          ),
          if (_circuitsLoading)
            const Align(
              alignment: Alignment.topCenter,
              child: LinearProgressIndicator(),
            )
        ],
      ),
    );
  }
}
