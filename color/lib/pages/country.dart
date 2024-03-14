import 'package:flutter/material.dart';

class Country extends StatelessWidget {
  const Country({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(centerTitle: true,
          title: Text('Country Page'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyDropdown(),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman berikutnya saat tombol "Berikutnya" ditekan
                  Navigator.pushNamed(context, '/login');
                },
                style: ElevatedButton.styleFrom(
                   backgroundColor: const Color.fromARGB(255, 255, 17, 0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 40,
                    vertical: 15,
                  ),
                ),
                child: Text("Berikutnya",
                style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                    fontWeight: FontWeight.w400,
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MyDropdown extends StatefulWidget {
  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  String selectedCountry = 'Indonesia';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Pilih Negara:',
          style: TextStyle(fontSize: 18),
        ),
        SizedBox(height: 10),
        DropdownButton<String>(
          value: selectedCountry,
          icon: Icon(Icons.arrow_downward),
          iconSize: 24,
          elevation: 16,
          style: TextStyle(color: Colors.blue, fontSize: 16),
          onChanged: (value) {
            setState(() {
              selectedCountry = '$value';
            });
          },
          items: <String>['Indonesia', 'Amerika', 'Australia']
              .map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(value),
            );
          }).toList(),
        ),
        SizedBox(height: 20),
        Text(
          'Negara yang dipilih: $selectedCountry',
          style: TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}