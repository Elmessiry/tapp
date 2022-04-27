import 'package:flutter/material.dart';
import 'package:tapp/shared/menu_drawer.dart';
import '../shared/menu_bottom.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Welcome aboard.')),
      drawer: MenuDrawer(),
      bottomNavigationBar: MenuBottom(),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/sport.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Center(
              child: Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                  color: Color.fromARGB(123, 253, 202, 50),
                ),
                child: Text(
                  'No pain, No gain!',
                  style: TextStyle(
                    fontSize: 16,
                    shadows: [
                      Shadow(
                        offset: Offset(1.0, 1.0),
                        blurRadius: 2.0,
                        color: Colors.grey,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
