import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gojek',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Your Favorites',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  print('Edit button pressed');
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Mengatur warna latar belakang
                  shape: RoundedRectangleBorder(
                    borderRadius:
                        BorderRadius.circular(10), // Mengatur sudut melingkar
                  ),
                ),
                child: Text(
                  'Edit',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
        body: GridView.builder(
          padding: EdgeInsets.all(20.0),
          itemCount: 7,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 4,
            mainAxisSpacing: 3.0,
            crossAxisSpacing: 3.0,
          ),
          itemBuilder: (context, index) {
            return GridTile(
              child: MenuTile(
                title: getTitleByIndex(index),
                imagePath: getImagePathByIndex(index),
              ),
            );
          },
        ),
      ),
    );
  }

  String getTitleByIndex(int index) {
    switch (index) {
      case 0:
        return 'GoRide';
      case 1:
        return 'GoCar';
      case 2:
        return 'GoFood';
      case 3:
        return 'GoSend';
      case 4:
        return 'GoMart';
      case 5:
        return 'GoPulsa';
      case 6:
        return 'Check-In';
      default:
        return '';
    }
  }

  String getImagePathByIndex(int index) {
    switch (index) {
      case 0:
        return 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
      case 1:
        return 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
      case 2:
        return 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
      case 3:
        return 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
      case 4:
        return 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
      case 5:
        return 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
      case 6:
        return 'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg';
      default:
        return '';
    }
  }
}

class MenuTile extends StatelessWidget {
  final String title;
  final String imagePath;

  const MenuTile({required this.title, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print('Menu $title di tap');
      },
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.network(
              imagePath,
              width: 60,
              height: 60,
            ),
            SizedBox(height: 2),
            Text(
              title,
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
