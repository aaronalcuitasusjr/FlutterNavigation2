import 'package:flutter/material.dart';
import 'package:flutter_navigation/figure_a.dart';
import 'package:flutter_navigation/music_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding:
              EdgeInsets.only(left: 20.0, top: 40.0, right: 20.0, bottom: 40.0),
          color: Colors.white,
          alignment: Alignment.center,
          child: Column(children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Text(
                'My Music',
                style: TextStyle(fontFamily: 'Roboto', fontSize: 32),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(100, 40),
                  backgroundColor: Colors.orange,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                child: Text('Log Out'),
              )
            ]),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.lightBlue,
                    ),
                    color: Colors.lightBlue,
                    borderRadius: BorderRadius.all(Radius.circular(16))),
                child: ListView(children: const [
                  MusicItem(title: 'Moscow Mule', artist: 'Bad Bunny'),
                  MusicItem(title: 'Después de la Playa', artist: 'Bad Bunny'),
                  MusicItem(
                      title: 'Me Porto Bonito',
                      artist: 'Bad Bunny, Chencho Corleone'),
                  MusicItem(title: 'Tití Me Preguntó', artist: 'Bad Bunny'),
                  MusicItem(title: 'Un Ratito', artist: 'Bad Bunny'),
                  MusicItem(title: 'Yo No Soy Celoso', artist: 'Bad Bunny'),
                  MusicItem(title: 'Tarot', artist: 'Bad Bunny, Jhayco'),
                  MusicItem(title: 'Neverita', artist: 'Bad Bunny'),
                ]),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const FigureA()));
                },
                style: ElevatedButton.styleFrom(
                  minimumSize: Size(double.infinity, 40),
                  backgroundColor: Colors.purpleAccent,
                  elevation: 4.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                ),
                child: Text('View All')),
          ]),
        ),
      ),
    );
  }
}
