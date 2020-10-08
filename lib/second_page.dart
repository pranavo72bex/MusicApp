import 'package:flutter/material.dart';
import 'package:mediaPlayerApp/data.dart';

class NowPlaying extends StatefulWidget {
  final List<Music> musicList;

  const NowPlaying({Key key, @required this.musicList}) : super(key: key);
  @override
  _NowPlayingState createState() => _NowPlayingState();
}

class _NowPlayingState extends State<NowPlaying> {
  int sliderHeight = 180;
  int maxValue = 220;
  int minvalue = 120;
  List<Music> musicList;
  int currentPlayingIndex;
  int listLength;

  @override
  void initState() {
    super.initState();
    currentPlayingIndex = 0;
    musicList = widget.musicList;
    listLength = musicList.length;
    print('nowPlaying: ${musicList[currentPlayingIndex].title}');
  }

  void nextMusic() {
    if (currentPlayingIndex < listLength - 1) {
      currentPlayingIndex = currentPlayingIndex + 1;
    } else
      currentPlayingIndex = 0;
    print('nowPlaying: ${musicList[currentPlayingIndex].title}');
  }

  void prevMusic() {
    if (currentPlayingIndex <= 0) {
      currentPlayingIndex = listLength - 1;
    } else
      currentPlayingIndex = currentPlayingIndex - 1;
    print('nowPlaying: ${musicList[currentPlayingIndex].title}');
  }

  @override
  Widget build(BuildContext context) {
    //final String storeData = ModalRoute.of(context).settings.arguments;
    return Scaffold(
        backgroundColor: Color(0xFF292D32),
        body: SafeArea(
            child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                margin: EdgeInsets.only(left: 10, top: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        offset: Offset(-6.0, -6.0),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 16),
                  ],
                  color: Color(0xFF292D32),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  color: Colors.grey,
                ),
              ),
              Text(
                "Playing Now",
                style: TextStyle(color: Colors.grey, fontSize: 14),
              ),
              Container(
                margin: EdgeInsets.only(right: 10, top: 10),
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.2),
                        offset: Offset(-6.0, -6.0),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.1),
                        offset: Offset(-6.0, -6.0),
                        blurRadius: 8),
                  ],
                  color: Color(0xFF292D32),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () {},
                  color: Colors.grey,
                ),
              )
            ]),
            SizedBox(height: 30),
            Center(
              child: Container(
                  height: 220,
                  width: 220,
                  decoration: BoxDecoration(boxShadow: [
                    BoxShadow(
                        color: Colors.white.withOpacity(0.3),
                        offset: Offset(-6.0, -6.0),
                        blurRadius: 8),
                    BoxShadow(
                        color: Colors.black.withOpacity(0.3),
                        offset: Offset(6.0, 6.0),
                        blurRadius: 8),
                  ], color: Color(0xFF292D32), shape: BoxShape.circle),
                  child: ClipOval(
                    child: Image.asset(
                      "assets/pic.png",
                      fit: BoxFit.cover,
                    ),
                  )),
            ),
            SizedBox(height: 30),
            Center(
                child: Column(children: [
              Text(
                musicList[currentPlayingIndex].title,
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                musicList[currentPlayingIndex].albumb,
                style: TextStyle(fontSize: 10, color: Colors.grey),
              ),
            ])),
            SizedBox(height: 30),
            Container(
                child: Text(
              sliderHeight.toString(),
              style: TextStyle(color: Colors.grey),
            )),
            Container(
              child: Slider(
                  value: sliderHeight.toDouble(),
                  min: minvalue.toDouble(),
                  max: maxValue.toDouble(),
                  activeColor: Color(0xFFEB1555),
                  inactiveColor: Color(0xFF8D8E98),
                  onChanged: (double newValue) {
                    setState(() {
                      sliderHeight = newValue.round();
                    });
                  }),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
                child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          offset: Offset(-6.0, -6.0),
                          blurRadius: 8),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(6.0, 6.0),
                          blurRadius: 16),
                    ],
                    color: Color(0xFF292D32),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.fast_rewind),
                    onPressed: () {
                      setState(() {
                        prevMusic();
                      });
                    },
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          offset: Offset(-6.0, -6.0),
                          blurRadius: 8),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(6.0, 6.0),
                          blurRadius: 16),
                    ],
                    color: Color(0xFF292D32),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.pause),
                    onPressed: () {},
                    color: Colors.grey,
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 10),
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                          color: Colors.white.withOpacity(0.2),
                          offset: Offset(-6.0, -6.0),
                          blurRadius: 8),
                      BoxShadow(
                          color: Colors.black.withOpacity(0.3),
                          offset: Offset(6.0, 6.0),
                          blurRadius: 16),
                    ],
                    color: Color(0xFF292D32),
                    shape: BoxShape.circle,
                  ),
                  child: IconButton(
                    icon: Icon(Icons.fast_forward),
                    onPressed: () {
                      setState(() {
                        nextMusic();
                      });
                    },
                    color: Colors.grey,
                  ),
                ),
              ],
            ))
          ],
        )));
  }
}
