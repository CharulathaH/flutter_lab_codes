import 'package:flutter/material.dart';

void main() {
  runApp(AnimationDemo());
}

class AnimationDemo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimationHomePage(),
    );
  }
}

class AnimationHomePage extends StatefulWidget {
  @override
  _AnimationHomePageState createState() => _AnimationHomePageState();
}

class _AnimationHomePageState extends State<AnimationHomePage> {
  double _width = 100;
  double _height = 100;
  double _opacity = 1.0;
  bool _isMoved = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Flutter Animation Demo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // AnimatedContainer (Size & Color change)
            AnimatedContainer(
              duration: Duration(seconds: 1),
              width: _width,
              height: _height,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            SizedBox(height: 20),

            // AnimatedOpacity (Fade effect)
            AnimatedOpacity(
              duration: Duration(seconds: 1),
              opacity: _opacity,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
              ),
            ),
            SizedBox(height: 20),

            // AnimatedPositioned
            Stack(
              children: [
                Container(width: 200, height: 200, color: Colors.grey[300]),
                AnimatedPositioned(
                  duration: Duration(seconds: 1),
                  left: _isMoved ? 100 : 0,
                  top: _isMoved ? 100 : 0,
                  child: Container(width: 50, height: 50, color: Colors.red),
                ),
              ],
            ),
            SizedBox(height: 20),

            // TweenAnimationBuilder
            TweenAnimationBuilder(
              tween: Tween<double>(begin: 0, end: _isMoved ? 1 : 0),
              duration: Duration(seconds: 1),
              builder: (context, double value, child) {
                return Transform.scale(
                  scale: value + 1,
                  child: child,
                );
              },
              child: Icon(Icons.star, size: 50, color: Colors.amber),
            ),
            SizedBox(height: 20),

            // Hero Animation (Navigating to another screen)
            Hero(
              tag: "heroAnimation",
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HeroScreen()),
                  );
                },
                child: Container(width: 100, height: 100, color: Colors.purple),
              ),
            ),
            SizedBox(height: 20),

            // Control Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _width = _width == 100 ? 200 : 100;
                      _height = _height == 100 ? 200 : 100;
                      _opacity = _opacity == 1.0 ? 0.3 : 1.0;
                      _isMoved = !_isMoved;
                    });
                  },
                  child: Text("Animate"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

// Second screen for Hero Animation
class HeroScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Hero Animation Screen")),
      body: Center(
        child: Hero(
          tag: "heroAnimation",
          child: Container(width: 200, height: 200, color: Colors.purple),
        ),
      ),
    );
  }
}
