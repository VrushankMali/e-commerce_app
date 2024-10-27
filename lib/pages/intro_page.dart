import 'package:flutter/material.dart';
import 'home_page.dart';

class IntroPage extends StatelessWidget
{
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      backgroundColor: Colors.grey[400],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 13.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //Logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/image/f1logo.png',
                  height: 240,
                ),
              ),

              const SizedBox(height: 48,),

              //Title
              const Text(
                'Let The Sky Fall',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  fontFamily: 'Monospace',
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 24,),

              //Sub title
              const Text(
                'Your One-Stop Destination for Exclusive F1 Merchandise and Collectibles',
                style: TextStyle(
                  color: Colors.black54,
                  fontSize: 15,
                  fontFamily: 'Monospace',
                ),
                textAlign: TextAlign.center,
              ),

              const SizedBox(height: 48,),

              //Start now button
              GestureDetector(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(),
                  ),
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red[600],
                    borderRadius: BorderRadius.circular(12.0),
                  ),
                  padding: const EdgeInsets.all(25.0),
                  child: const Center(
                    child: Text(
                      'Pit In',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Monospace',
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}