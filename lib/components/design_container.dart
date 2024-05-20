import 'package:flutter/material.dart';

class DesignContainer extends StatefulWidget {
  final Widget child;
  const DesignContainer({super.key, required this.child});

  @override
  State<StatefulWidget> createState() => _DesignContainerState();
}

class _DesignContainerState extends State<DesignContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        gradient: const LinearGradient(
          colors: [
            Color.fromARGB(120, 120, 167, 225),
            Color.fromARGB(194, 3, 16, 33),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: widget.child,
    );
  }
}
