import 'package:flutter/material.dart';

class DropletButton extends StatefulWidget {
  final int value;

  DropletButton({required this.value});

  @override
  _DropletButtonState createState() => _DropletButtonState();
}

class _DropletButtonState extends State<DropletButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isPressed = !_isPressed;
        });
      },
      child: Container(
        padding: EdgeInsets.all(8),
        margin: EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _isPressed ? Colors.blue : Colors.white,
          border: Border.all(color: Colors.blue, width: 2),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '💧', // Water droplet emoji
              style: TextStyle(fontSize: 24, color: _isPressed ? Colors.white : Colors.blue),
            ),
            SizedBox(height: 4),
            Text(
              '${widget.value}L', // Volume label
              style: TextStyle(fontSize: 12, color: _isPressed ? Colors.white : Colors.blue),
            ),
          ],
        ),
      ),
    );
  }
}


class DropletButtonsRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        DropletButton(value: 1),
        DropletButton(value: 2),
        DropletButton(value: 3),
        DropletButton(value: 4),
        DropletButton(value: 5),
      ],
    );
  }
}
