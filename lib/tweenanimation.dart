import 'package:flutter/material.dart';

class TweenAnimationExample extends StatefulWidget {
  @override
  _TweenAnimationExampleState createState() => _TweenAnimationExampleState();
}

class _TweenAnimationExampleState extends State<TweenAnimationExample> {
  bool _isLarge = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tween Animation'),
      ),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 100, end: _isLarge ? 200 : 100),
          duration: Duration(seconds: 1),
          builder: (context, size, child) {
            return Container(
              width: size,
              height: size,
              color: Colors.blue,
              child: child,
            );
          },
          child: Center(
            child: Text(
              'Animate',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _isLarge = !_isLarge;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
