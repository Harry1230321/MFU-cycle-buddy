import 'package:flutter/material.dart';

//Animated button
class AnimatedButton extends StatefulWidget {
  final String text;
  final Function onPressed;

  const AnimatedButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);

  @override
  _AnimatedButtonState createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<AnimatedButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (tapDownDetails) {
        setState(() {
          _isPressed = true;
        });
      },
      onTapUp: (tapUpDetails) {
        setState(() {
          _isPressed = false;
        });
      },
      onTapCancel: () {
        setState(() {
          _isPressed = false;
        });
      },
      onTap: () {
        widget.onPressed();
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30.0),
          color: _isPressed ? Colors.red[700] : Colors.red,
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

//Complete and cancel button
class ToggleWidget extends StatefulWidget {
  const ToggleWidget({Key? key}) : super(key: key);

  @override
  _ToggleWidgetState createState() => _ToggleWidgetState();
}

class _ToggleWidgetState extends State<ToggleWidget> {
  bool _isComplete = false;

  void _toggleStatus() {
    setState(() {
      _isComplete = !_isComplete;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100.0,
          width: 180.0,
          padding: const EdgeInsetsDirectional.only(top: 40.0),
          child: ElevatedButton(
            onPressed: () {
              _toggleStatus();
            },
            child: Text(
              _isComplete ? "Completed" : "Cancelled",
              style: const TextStyle(color: Colors.white, fontSize: 24.0),
            ),
          ),
        ),
      ],
    );
  }
}
