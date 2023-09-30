import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return (orientation == Orientation.portrait)
              ? PortraitLayout()
              : LandscapeLayout();
        },
      ),
    );
  }
}

class PortraitLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(16.0),
          child: CircleAvatar(
            radius: 50,
            backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSJv47AxqxWMkZuSvKVM3qlySe4UH0gnzitolxOVvp2CoDAlJFMyK6CpKMvpG_qLpHN4H4&usqp=CAU'),
          ),
        ),
        Text(
          'The Fish',
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        SizedBox(height: 16),
        Text(
          'The fish looks so beautiful.',
          textAlign: TextAlign.center,
        ),
        SizedBox(height: 16),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PictureTile(),
            PictureTile(),
            PictureTile(),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            PictureTile(),
            PictureTile(),
            PictureTile(),
          ],
        ),
      ],
    );
  }
}

class LandscapeLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.all(16.0),
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTNqxnOCzipFWoHdiK72C7tStbYNsyFR1Ptpb3bYo7R_0KpoWAFDIUK5fN4LESW-PyNfag&usqp=CAU'),
                ),
              ),
              Text(
                'The Fish',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
              SizedBox(height: 16),
              Text(
                'The fish looks so beautiful.',
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PictureTile(),
                  PictureTile(),
                  PictureTile(),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PictureTile(),
                  PictureTile(),
                  PictureTile(),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class PictureTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        width: 100,
        height: 100,
        color: Colors.grey,
        child: Center(
          child: Icon( Icons.image),
          ),
        ),
      );
  }
}
