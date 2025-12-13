import 'package:flutter/material.dart';

class Rectangle extends StatefulWidget {
  const Rectangle({super.key});

  @override
  State<Rectangle> createState() => RectangleState();
}

class RectangleState extends State<Rectangle> {
  int _width = 0;
  int _length = 0;
  int _area = 0;
  TextEditingController _widthCtrl = TextEditingController();
  TextEditingController _lengthCtrl = TextEditingController();

  void _calRec(){
      _width = int.tryParse(_widthCtrl.text) ?? 0;
      _length = int.tryParse(_lengthCtrl.text) ?? 0;
      setState(() {
        _area = _width * _length;
      });
  }

  final InputDecoration _textFieldStyle = InputDecoration(
    border: OutlineInputBorder(),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('คำนวณพื้นที่สี่เหลี่ยม'), centerTitle: true),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 10),
            Text(
              "กว้าง $_width ม. ยาว $_length ม. พื้นที่คือ $_area ตร.ม.",
              style: TextStyle(fontSize: 18, color: Colors.orange),
            ),
            SizedBox(height: 10),
            TextField(
              controller: _widthCtrl,
              keyboardType: TextInputType.number,
              decoration: _textFieldStyle.copyWith(
                label: Text('ความกว้าง'),
                hint: Text(
                  'กรุณากรอกความกว้าง',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),
            SizedBox(height: 30),
            TextField(
              controller: _lengthCtrl,
              keyboardType: TextInputType.number,
              decoration: _textFieldStyle.copyWith(
                label: Text('ความยาว'),
                hint: Text(
                  'กรุณากรอกความยาว`',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
            ),

            SizedBox(height: 10),
            ElevatedButton(onPressed: () => _calRec(), child: Text('คำนวณ')),
          ],
        ),
      ),
    );
  }
}
