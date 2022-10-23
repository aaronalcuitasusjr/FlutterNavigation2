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
          padding: EdgeInsets.only(top: 20.0, bottom: 12.0),
          decoration: BoxDecoration(
            image: DecorationImage(
              alignment: Alignment.topCenter,
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
            ),
          ),
          alignment: Alignment.center,
          child: Column(children: [
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    RichText(
                      text: TextSpan(
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 32,
                            color: Colors.white),
                        children: const [
                          TextSpan(
                              text: 'User',
                              style: TextStyle(color: Colors.orange)),
                          TextSpan(text: '\'s Music'),
                        ],
                      ),
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
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: TextField(
                style: TextStyle(
                  color: Colors.purpleAccent,
                ),
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0),
                    borderSide: BorderSide(
                      color: Colors.purple,
                    ),
                  ),
                  filled: true,
                  fillColor: Colors.white,
                  labelText: 'Search',
                  hintText: 'Enter any title, artist, or album',
                  labelStyle: TextStyle(
                    color: Colors.purpleAccent,
                  ),
                  hintStyle: TextStyle(
                    color: Colors.deepPurple,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 20,
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: SingleChildScrollView(
                  padding: EdgeInsets.only(left: 20.0, right: 20.0),
                  child: Column(
                    children: [
                      SizedBox(
                        width: double.infinity,
                        height: 20,
                      ),
                      Text(
                        'Un Verano Sin Ti',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24,
                            color: Colors.purple),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        padding:
                            EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.lightBlue,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(children: [
                          MusicItem(
                              title: 'Moscow Mule',
                              artist: 'Bad Bunny',
                              picture: 'assets/images/album_icon.png',
                              isPlaying: true),
                          MusicItem(
                              title: 'Después de la Playa',
                              artist: 'Bad Bunny',
                              picture: 'assets/images/album_icon.png',
                              isPlaying: false),
                          MusicItem(
                              title: 'Me Porto Bonito',
                              artist: 'Bad Bunny, Chencho Corleone',
                              picture: 'assets/images/album_icon.png',
                              isPlaying: false),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 40),
                                backgroundColor: Colors.lightBlue,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              child: Text('View All')),
                        ]),
                      ),
                      Text(
                        'BORN PINK',
                        style: TextStyle(
                          fontFamily: 'Roboto',
                          fontSize: 24,
                          color: Colors.purple,
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        padding:
                            EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.lightBlue,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(children: [
                          MusicItem(
                              title: 'Pink Venom',
                              artist: 'BLACKPINK',
                              picture: 'assets/images/album_icon_2.jpeg',
                              isPlaying: false),
                          MusicItem(
                              title: 'Shut Down',
                              artist: 'BLACKPINK',
                              picture: 'assets/images/album_icon_2.jpeg',
                              isPlaying: false),
                          MusicItem(
                              title: 'Typa Girl',
                              artist: 'BLACKPINK',
                              picture: 'assets/images/album_icon_2.jpeg',
                              isPlaying: false),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 40),
                                backgroundColor: Colors.lightBlue,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              child: Text('View All')),
                        ]),
                      ),
                      Text(
                        'Dawn FM',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24,
                            color: Colors.purple),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        padding:
                            EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.lightBlue,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(children: [
                          MusicItem(
                              title: 'Dawn FM',
                              artist: 'The Weeknd',
                              picture: 'assets/images/album_icon_3.png',
                              isPlaying: false),
                          MusicItem(
                              title: 'Gasoline',
                              artist: 'The Weeknd',
                              picture: 'assets/images/album_icon_3.png',
                              isPlaying: false),
                          MusicItem(
                              title: 'How Do I Make You..',
                              artist: 'The Weeknd',
                              picture: 'assets/images/album_icon_3.png',
                              isPlaying: false),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 40),
                                backgroundColor: Colors.lightBlue,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              child: Text('View All')),
                        ]),
                      ),
                      Text(
                        'My new playlist',
                        style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 24,
                            color: Colors.purple),
                      ),
                      Container(
                        width: double.infinity,
                        margin: EdgeInsets.only(top: 20.0, bottom: 20.0),
                        padding:
                            EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(
                              color: Colors.lightBlue,
                            ),
                            borderRadius:
                                BorderRadius.all(Radius.circular(16))),
                        child: Column(children: [
                          MusicItem(
                              title: 'New To You',
                              artist: 'Calvin Harris, Normani, Tinashe, Offset',
                              picture: 'assets/images/album_icon_4.jpeg',
                              isPlaying: false),
                          MusicItem(
                              title: 'Obsessed',
                              artist: 'Calvin Harris, Charlie Puth, Shenseea',
                              picture: 'assets/images/album_icon_4.jpeg',
                              isPlaying: false),
                          MusicItem(
                              title: 'If You Let Me',
                              artist: 'Alina Baraz',
                              picture: 'assets/images/album_icon_5.jpg',
                              isPlaying: false),
                          ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                minimumSize: Size(double.infinity, 40),
                                backgroundColor: Colors.lightBlue,
                                elevation: 0,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(16.0),
                                ),
                              ),
                              child: Text('View All')),
                        ]),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 12,
            ),
            Container(
              padding: EdgeInsets.only(left: 20.0, right: 20.0),
              child: Row(children: [
                Expanded(
                  child: Row(
                    children: [
                      Container(
                        height: 40,
                        width: 40,
                        margin: EdgeInsets.only(right: 8.0),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            alignment: Alignment.centerLeft,
                            image: AssetImage('assets/images/album_icon.png'),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Bad Bunny - Moscow Mule',
                              style: TextStyle(color: Colors.white)),
                          SizedBox(
                            height: 4,
                          ),
                          Container(
                            height: 8,
                            width: 168,
                            alignment: Alignment.centerLeft,
                            child: LinearProgressIndicator(
                              value: 0.34,
                              backgroundColor: Colors.white,
                              color: Colors.orange,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const FigureA()));
                    },
                    style: ElevatedButton.styleFrom(
                      minimumSize: Size(100, 40),
                      backgroundColor: Colors.purpleAccent,
                      elevation: 4.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16.0),
                      ),
                    ),
                    child: Text('Add Playlist')),
              ]),
            ),
          ]),
        ),
      ),
    );
  }
}
