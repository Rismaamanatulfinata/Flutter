import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
        title: Text('HomePage',
        style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            margin: EdgeInsets.only(top: 16),
            child: Text(
              'Daftar Gambar',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/detail');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/politeknik.png',  // Gantilah dengan path gambar yang sesuai
                  width: 70,
                  height: 70,
                ),
                SizedBox(height: 10),
                Text('Gambar 1'),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/detail2');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/gambar2.png',  // Gantilah dengan path gambar yang sesuai
                  width: 70,
                  height: 70,
                ),
                SizedBox(height: 10),
                Text('Gambar 2'),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/detail3');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/gambar3.png',  // Gantilah dengan path gambar yang sesuai
                  width: 70,
                  height: 70,
                ),
                SizedBox(height: 10),
                Text('Gambar 3'),
              ],
            ),
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              Navigator.of(context).pushNamed('/detail4');
            },
            child: Column(
              children: [
                Image.asset(
                  'images/gambar4.png',  // Gantilah dengan path gambar yang sesuai
                  width: 70,
                  height: 70,
                ),
                SizedBox(height: 10),
                Text('Gambar 4'),
              ],
            ),
          ),
          // Tambahkan kolom lainnya sesuai kebutuhan
        ],
      ),
    );
  }
}