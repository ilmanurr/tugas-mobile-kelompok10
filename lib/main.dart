import 'package:flutter/material.dart';

void main() {
  runApp(KartuNama());
}

class KartuNama extends StatelessWidget {
  const KartuNama({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              'Kelompok 11',
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                letterSpacing: 2,
              ),
            ),
          ),
          backgroundColor: Colors.brown,
        ),
        backgroundColor: Colors.brown[100],
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  height: 30,
                ),

                // athip's profile
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/pink2.jpg'),
                ),
                Text(
                  'Salsabilla Athifah Y.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MadimiOne-Regular',
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  'FLUTTER DEVELOPER',
                  style: TextStyle(
                    color: Colors.brown.shade700,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                // no telp
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.yellow[300],
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 60),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_iphone,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '089685xxxxxx',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // email
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'salsabilla@gmail.com',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // ilma's profile
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/ungu2.jpg'),
                ),
                Text(
                  'Ilma Nur Hidayah',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MadimiOne-Regular',
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  'UI/UX DESIGNER',
                  style: TextStyle(
                    color: Colors.brown.shade700,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3,
                  ),
                ),
                // no telp
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.yellow[300],
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 60),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_iphone,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '089702xxxxxx',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // email
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'ilmanurrh@gmail.com',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),

                // haniza's profile
                CircleAvatar(
                  radius: 100,
                  backgroundImage: AssetImage('images/hijau2.jpg'),
                ),
                Text(
                  'Haniza Kurnia Dwi P.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'MadimiOne-Regular',
                    letterSpacing: 1,
                  ),
                ),
                Text(
                  'FRONTEND DEVELOPER',
                  style: TextStyle(
                    color: Colors.brown.shade700,
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                  ),
                ),
                // no telp
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.yellow[300],
                    margin: EdgeInsets.symmetric(vertical: 5, horizontal: 60),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.phone_iphone,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            '081227xxxxxx',
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                // email
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 60),
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Row(
                        children: [
                          Icon(
                            Icons.email,
                            size: 30,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'hanizakn@gmail.com',
                            style: TextStyle(
                              fontSize: 18,
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class Kolom extends StatelessWidget {
  const Kolom({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            //crossAxisAlignment: CrossAxisAlignment.start,
            //verticalDirection: VerticalDirection.down,
            //mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                width: 200,
                color: Colors.yellow,
                child: Text('Container1'),
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.grey,
                child: Text('Container2'),
              ),
              Container(
                height: 100,
                width: 300,
                padding: EdgeInsets.all(40),
                color: Colors.green,
                child: Text(
                  'Container3',
                  style: TextStyle(color: Colors.white),
                ),
              ),
              Container(
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ilovemie extends StatelessWidget {
  const ilovemie({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Noodelicious',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.brown[800],
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/miayam.png'),
          ),
        ),
        backgroundColor: Colors.brown[200],
      ),
    );
  }
}
