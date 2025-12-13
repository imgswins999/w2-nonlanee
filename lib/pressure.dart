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

  void  _calPressure() {
    _F = double.tryParse(_FCtrl.text) ?? 0;
    _A = double.tryParse(_ACtrl.text) ?? 0;
    setState(() {
      _P = _F/_A;
    });
  }

  final InputDecoration _textFieldStyle = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คำนวณความดัน'), centerTitle: true),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Text(
            "แรง $_F N. พื้นที่ $_A m² ความดัน $_P P.",
            style: TextStyle(fontSize: 18, color: Colors.orange),
          ),
          SizedBox(height: 20,),
          Container(
            child: TextField(
              controller: _FCtrl,
              keyboardType: TextInputType.number,
              decoration: _textFieldStyle.copyWith(
                label: Text('แรง'),
                hint: Text(
                  'กรุณากรอกแรง (F)',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            child: TextField(
              controller: _ACtrl,
              keyboardType: TextInputType.number,
              decoration: _textFieldStyle.copyWith(
                label: Text('พื้นที่'),
                hint: Text(
                  'กรุณากรอกพื้นที่ (A)',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: () => _calPressure(), child: Text('คำนวณ')),
        ],
      ),
    );
  }
}
