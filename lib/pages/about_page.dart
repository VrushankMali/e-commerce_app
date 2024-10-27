import 'dart:ui';
import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget
{
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black26,
        elevation: 0,
      ),
      body: Stack(
        children: [
          //Image background
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/image/f1logo.png'),
                fit: BoxFit.cover,
              )
            ),
          ),

          //Blurry effect
          BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0), // Adjust the blur strength
            child: Container(
              color: Colors.black.withOpacity(0.26), // Optional: add a color overlay
            ),
          ),

          //Foreground
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 13.0),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  //Logo
                  Padding(
                    padding: const EdgeInsets.all(0),
                    child: Image.asset(
                      'lib/image/f1logo.png',
                      height: 240,
                    ),
                  ),

                  //const SizedBox(height: 20,),

                  //Sub title
                  const Text(
                    'Step into the blistering fast world of Formula 1, where speed isn\'t '
                        'just a number—it\'s a way of life. This app is your ticket to the '
                        'ultimate fan experience, where every swipe feels like you\'re roaring '
                        'down the straight at 200 mph! From exclusive team gear to rare, must-have '
                        'collectibles, we’ve got the fuel to ignite your passion. Whether you\'re '
                        'gearing up for the next Grand Prix or hunting down the rarest F1 treasures, '
                        'every purchase feels like crossing the finish line in first place. '
                        'No pit stops, no limits—just pure F1 adrenaline. Welcome to the future '
                        'of fan gear. Get ready to open your DRS!',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Monospace',
                    ),
                    textAlign: TextAlign.center,
                  ),

                  const SizedBox(height: 24,),

                  const Text(
                    'Formula 1 Racing',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      fontStyle: FontStyle.italic,
                      fontFamily: 'Monospace',
                    ),
                    textAlign: TextAlign.center,
                  ),

                  //const SizedBox(height: 48,),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}