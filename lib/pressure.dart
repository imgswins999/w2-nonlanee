import 'package:flutter/material.dart';

class Pressure extends StatefulWidget {
  const Pressure({super.key});

  @override
  State<Pressure> createState() => PressureState();
}

class PressureState extends State<Pressure> {
  double _F = 0;
  double _A = 0;
  double _P = 0;
  TextEditingController _FCtrl = TextEditingController();
  TextEditingController _ACtrl = TextEditingController();

  void _calPressure() {
    _F = double.tryParse(_FCtrl.text) ?? 0;
    _A = double.tryParse(_ACtrl.text) ?? 0;
    setState(() {
      _P = _F / _A;
    });
  }

  final InputDecoration _textFieldStyle = InputDecoration(
    filled: true,
    fillColor: const Color(0xFF606060),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),

    labelStyle: TextStyle(
      color: const Color.fromARGB(255, 246, 100, 144),
      fontSize: 20,
    ),

    floatingLabelStyle: TextStyle(
      color: const Color.fromARGB(255, 246, 100, 144),
      fontWeight: FontWeight.bold,
      fontSize: 20,
    ),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 46, 46, 46),
      appBar: AppBar(title: Text('คำนวณความดัน'), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 20),
          Text(
            "แรง $_F N.",
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 246, 100, 144),
            ),
          ),
          Text(
            "พื้นที่ $_A m²",
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 246, 100, 144),
            ),
          ),
          Text(
            " ความดัน $_P P.",
            style: TextStyle(
              fontSize: 20,
              color: const Color.fromARGB(255, 246, 100, 144),
            ),
          ),
          SizedBox(height: 20),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              style: TextStyle(color: const Color.fromARGB(255, 248, 148, 148)),
              controller: _FCtrl,
              keyboardType: TextInputType.number,
              decoration: _textFieldStyle.copyWith(
                label: Text('แรง'),
                hintText: 'กรุณากรอกแรง (F)',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 248, 148, 148),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: TextField(
              style: TextStyle(color: const Color.fromARGB(255, 248, 148, 148)),
              controller: _ACtrl,
              keyboardType: TextInputType.number,
              decoration: _textFieldStyle.copyWith(
                label: Text('พื้นที่'),
                hintText: 'กรุณากรอกพื้นที่ (A)',
                hintStyle: TextStyle(
                  color: const Color.fromARGB(255, 248, 148, 148),
                ),
              ),
            ),
          ),

          SizedBox(height: 10),
          ElevatedButton(
            onPressed: () => _calPressure(),
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 248, 148, 148),
              padding: const EdgeInsets.symmetric(
                horizontal: 150,
                vertical: 10,
              ),
            ),
            child: Text('คำนวณ', style: TextStyle(color: Colors.white,fontSize: 20)),
          ),
        ],
      ),
    );
  }
}
