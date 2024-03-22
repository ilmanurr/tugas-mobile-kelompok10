import 'package:flutter/material.dart';
import 'package:i_love_mie/Quiz.dart';

void main() {
  runApp(QuizMaba());
}

class QuizMaba extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: HalamanQuiz(),
          ),
        ),
      ),
    );
  }
}

class HalamanQuiz extends StatefulWidget {
  @override
  State<HalamanQuiz> createState() => _HalamanQuizState();
}

class _HalamanQuizState extends State<HalamanQuiz> {
  List<Widget> skorMaba = [];

  List<Quiz> bankSoal = [
    Quiz('UNESA didirikan sejak tahun?', '1954', '1964', '1974', '1984', '1964'), //1
    Quiz('Dimanakah UNESA berada?', 'Surabaya', 'Surakarta', 'Semarang', 'Subang',
        'Surabaya'), //2
    Quiz('Kampus pertama UNESA terletak di?', 'Jemursari', 'Wiyung', 'Ketintang', 'Lidah Wetan', 'Ketintang'), //3
    Quiz('UNESA memiliki 2 kampus di Surabaya, dimanakah letaknya?', 'Ketintang dan Lidah Wetan', 'Ketintang dan Gedangan', 'Lidah Wetan dan Wonokromo', 'Lidah Wetan dan Gubeng', 'Ketintang dan Lidah Wetan'),
    Quiz('Akreditasi UNESA saat ini adalah...', 'Unggul', 'Baik sekali', 'Baik', 'Tidak terakreditasi', 'Unggul'), //4
    Quiz('Dimanakah letak Fakultas Vokasi UNESA?', 'Magetan', 'Lidah Kulon', 'Lidah Wetan',
        'Ketintang', 'Ketintang'), //5
    Quiz('Fakultas Vokasi UNESA didirikan pada tahun?', '2019', '2020', '2021', '2022', '2021'), //6
    Quiz('Siapakah dekan Fakultas Vokasi UNESA saat ini?', 'Dr. Suprapto', 'Dr. Warju', 'I Gde Agung Sri Sidhimantra', 'Dodik Arwin Darmawan', 'Dr. Suprapto'), //7
    Quiz('Berapa jumlah prodi yang ada di Fakultas Vokasi UNESA?', '20', '10', '30', '15', '10'), //8
    Quiz('Program studi D4 Manajemen Informatika berdiri sejak tahun?', '2012', '2018', '2019', '2020', '2019'), //9
    Quiz('Sebelum berdiri sendiri, program studi D4 Manajemen Informatika tergabung dalam jurusan apa?', 'Teknik Elektro', 'Teknik Listrik', 'Teknik Informatika', 'Teknik Mesin', 'Teknik Informatika'), //10
    Quiz('Siapa kaprodi Manajemen Informatika saat ini', 'Asmunin', 'Dodik Arwin Darmawan', 'I Gde Agung Sri Sidhimantra',
        'Ari Kurniawan', 'Dodik Arwin Darmawan'), //11
    Quiz('Sebelum menjadi program studi D4 Manajemen Informatika, nama program studi ini adalah...', 'S1 Manajemen Informatika', 'D1 Manajemen Informatika', 'D2 Manajemen Informatika', 'D3 Manajemen Informatika', 'D3 Manajemen Informatika'), //12
    Quiz('Program studi D3 Manajemen Informatika telah hadir di UNESA sejak tahun?', '2010', '2011', '2012', '2013', '2012'), //13
    Quiz('Sebelum Fakultas Vokasi didirikan, prodi Manajemen Informatika berada di fakultas apa?', 'Fakultas Hukum', 'Fakultas Teknik', 'Fakultas Bahasa dan Seni', 'Fakultas Ekonomi dan Bisnis', 'Fakultas Teknik'), //14
    Quiz('Nama himpunan mahasiswa D4 Manajemen Informatika adalah...', 'Himafortic', 'Himafortie', 'Himainfor', 'Himaticfor', 'Himafortic') //15
  ];
  int nomorPertanyaan = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 3,
          child: Padding(
            padding: EdgeInsets.all(20.0),
              child: Center(
                child: Text(
                  bankSoal[nomorPertanyaan].pertanyaan,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
          ),
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
                child: ElevatedButton(
                  child: Text(
                    bankSoal[nomorPertanyaan].jawabanA,
                    style: TextStyle(color: Colors.black, fontSize: 20.0),
                  ),
                  onPressed: () {
                    setState(() {
                      // jika jawaban benar
                      if (bankSoal[nomorPertanyaan].jawabanA ==
                          bankSoal[nomorPertanyaan].kunciJawaban) {
                        skorMaba.add(Icon(
                          Icons.check,
                          color: Colors.green,
                        ));
                        // tambahkan nomor pertanyaan
                        nomorPertanyaan++;
                      } else {
                        // jika jawaban salah
                        skorMaba.add(Icon(
                          Icons.close,
                          color: Colors.red,
                        ));
                      }}
                  );
                },
            ),
          )
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                child: Text(
                  bankSoal[nomorPertanyaan].jawabanB,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {
                  setState(() {
                    // jika jawaban benar
                    if (bankSoal[nomorPertanyaan].jawabanB ==
                        bankSoal[nomorPertanyaan].kunciJawaban) {
                      skorMaba.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                      // tambahkan nomor pertanyaan
                      nomorPertanyaan++;
                    } else {
                      // jika jawaban salah
                      skorMaba.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }}
                  );
                },
              ),
            )
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                child: Text(
                  bankSoal[nomorPertanyaan].jawabanC,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {
                  setState(() {
                    // jika jawaban benar
                    if (bankSoal[nomorPertanyaan].jawabanC ==
                        bankSoal[nomorPertanyaan].kunciJawaban) {
                      skorMaba.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                      // tambahkan nomor pertanyaan
                      nomorPertanyaan++;
                    } else {
                      // jika jawaban salah
                      skorMaba.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }}
                  );
                },
              ),
            )
        ),
        Expanded(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: ElevatedButton(
                child: Text(
                  bankSoal[nomorPertanyaan].jawabanD,
                  style: TextStyle(color: Colors.black, fontSize: 20.0),
                ),
                onPressed: () {
                  setState(() {
                    // jika jawaban benar
                    if (bankSoal[nomorPertanyaan].jawabanD ==
                        bankSoal[nomorPertanyaan].kunciJawaban) {
                      skorMaba.add(Icon(
                        Icons.check,
                        color: Colors.green,
                      ));
                      // tambahkan nomor pertanyaan
                      nomorPertanyaan++;
                    } else {
                      // jika jawaban salah
                      skorMaba.add(Icon(
                        Icons.close,
                        color: Colors.red,
                      ));
                    }}
                  );
                },
              ),
            )
        ),
        Row(children: skorMaba)
      ],
    );
  }
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
              'Kelompok 10',
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
