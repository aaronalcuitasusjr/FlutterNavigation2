import 'package:flutter/material.dart';

class MusicItem extends StatelessWidget {
  const MusicItem(
      {super.key,
      required this.title,
      required this.artist,
      required this.picture,
      required this.isPlaying});

  final String title;
  final String artist;
  final String picture;
  final bool isPlaying;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    if (isPlaying == true) {
      return Container(
        width: double.infinity,
        height: 80,
        margin: EdgeInsets.only(bottom: 8.0),
        padding: EdgeInsets.only(right: 4.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.lightBlue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage(picture),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange[700]),
                  ),
                  Text(artist,
                      style:
                          TextStyle(fontSize: 12, color: Colors.orange[300])),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(40, 40),
                backgroundColor: Colors.orange,
                shape: const CircleBorder(),
              ),
              child: Icon(Icons.pause_rounded),
            ),
          ],
        ),
      );
    } else {
      return Container(
        width: double.infinity,
        height: 80,
        margin: EdgeInsets.only(bottom: 8.0),
        padding: EdgeInsets.only(right: 4.0),
        decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.lightBlue,
            ),
            borderRadius: BorderRadius.all(Radius.circular(16))),
        child: Row(
          children: [
            Container(
              height: 80,
              width: 80,
              margin: EdgeInsets.only(right: 8.0),
              decoration: BoxDecoration(
                  image: DecorationImage(
                    alignment: Alignment.centerLeft,
                    image: AssetImage(picture),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16),
                      bottomLeft: Radius.circular(16))),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    title,
                    style: TextStyle(
                        fontFamily: 'Roboto',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.blue[700]),
                  ),
                  Text(artist,
                      style: TextStyle(
                          fontSize: 12, color: Colors.lightBlue[300])),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                fixedSize: const Size(40, 40),
                backgroundColor: Colors.lightBlue,
                shape: const CircleBorder(),
              ),
              child: Icon(Icons.play_arrow),
            ),
          ],
        ),
      );
    }
  }
}
