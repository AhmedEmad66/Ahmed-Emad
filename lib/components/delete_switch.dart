import 'package:flutter/material.dart';

class CustomDeleteSwitch extends StatefulWidget {
  const CustomDeleteSwitch({super.key});

  @override
  State<CustomDeleteSwitch> createState() => _CustomDeleteSwitchState();
}

class _CustomDeleteSwitchState extends State<CustomDeleteSwitch> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text(
          "Delete",
          style: TextStyle(
              fontSize: 10, fontWeight: FontWeight.w500, color: Colors.red),
        ),
        SizedBox(
          height: 30,
          child: Switch(
            value: isSwitched,
            onChanged: (value) {
              setState(() {
                isSwitched = value;
              });
            },
            activeColor: Colors.red,
          ),
        ),
      ],
    );
  }
}
