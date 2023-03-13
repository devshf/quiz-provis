import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  MyAppState createState() {
    return MyAppState();
  }
}

class MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Quiz Kelompok Flutter',
      home: Scaffold(
          appBar: AppBar(
              leading: FlutterLogo(),
              backgroundColor: Colors.blueGrey,
              title: Text('Quiz Flutter'),
              actions: <Widget>[ButtonNamaKelompok(), ButtonPerjanjian()]),
          body: Center(
              child:
                  Column(mainAxisAlignment: MainAxisAlignment.start, children: [
            Container(
              padding: const EdgeInsets.all(20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Mobil Saya',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 209, 64, 64)),
                    ),
                  ]),
            ),
            Container(
              child: Column(children: [
                const Text('Brio'),
                const Text('Nomor Rangka: XXXXXXX'),
                const Text('Nomor Mesin: XXXXXXXX'),
              ]),
            ),
            Container(
              padding: EdgeInsets.all(14),
              child: Image.network(
                'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                width: 100,
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Detail'),
              style: ElevatedButton.styleFrom(
                textStyle: const TextStyle(fontSize: 12),
              ),
            ),
            Container(
              padding: EdgeInsets.only(top: 180),
              child: Text(
                'Katalog Produk',
                textAlign: TextAlign.center,
              ),
            ),
            Container(
                //const Text('Katalog Produk'),
                //decoration: BoxDecoration(border: Border.all()),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 80,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 80,
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(10),
                    child: Image.network(
                      'https://flutter.github.io/assets-for-api-docs/assets/widgets/owl-2.jpg',
                      width: 80,
                    ),
                  ),
                ])),
          ]))),
    );
  }
}

class ButtonNamaKelompok extends StatelessWidget {
  const ButtonNamaKelompok({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.account_circle_rounded),
      onPressed: () {
        // icon account di tap
        showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('Kelompok 16'),
            content: const Text(
                'Deva Shofa Al Fathin (devasa@upi.edu) ; Farah Dwi Ameliani (farahdwi@upi.edu)'),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'OK'),
                child: const Text('OK'),
              ),
            ],
          ),
        );
      },
    );
  }
}

class ButtonPerjanjian extends StatelessWidget {
  const ButtonPerjanjian({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.access_alarm_rounded),
      onPressed: () {
        // icon setting ditap
        const snackBar = SnackBar(
          duration: Duration(seconds: 20),
          content: Text(
              'Kami berjanji tidak akan berbuat curang dan atau membantu kelompok lain berbuat curang'),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      },
    );
  }
}
