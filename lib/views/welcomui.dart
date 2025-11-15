// ignore_for_file: use_full_hex_values_for_flutter_colors

import 'package:flutter/material.dart';

class WelcomUi extends StatefulWidget {
  const WelcomUi({super.key});

  @override
  State<WelcomUi> createState() => _WelcomUiState();
}

class _WelcomUiState extends State<WelcomUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ------------------ Stack รูป Coin / Donut ------------------
            SizedBox(
              width: double.infinity,
              height: 650,
              child: Stack(
                children: [
                  // รูปหลัง
                  Positioned.fill(
                    child: Image.asset(
                      "assets/images/Group2.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),

                  // รูปหน้า
                  Positioned(
                    top: 35,
                    left: 0,
                    right: 0,
                    child: Image.asset(
                      "assets/images/Group1.jpg",
                      width: double.infinity,
                      height: 750,
                      fit: BoxFit.contain,
                    ),
                  ),
                  // รูป Coin
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Align(
                      alignment: const FractionalOffset(0.18, 0.25),
                      child: Image.asset(
                        "assets/images/Coin.jpg",
                        width: MediaQuery.of(context).size.width * 0.22,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  // รูป Donut
                  Padding(
                    padding: const EdgeInsets.only(top: 100.0),
                    child: Align(
                      alignment: const FractionalOffset(0.83, 0.25),
                      child: Image.asset(
                        "assets/images/Donut.jpg",
                        width: MediaQuery.of(context).size.width * 0.22,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            // ------------------ ข้อความต่อจากภาพ ------------------
            SizedBox(height: 10), // เว้นระยะเล็ก ๆ
            Text(
              'บันทึก',
              style: TextStyle(
                fontSize: 34,
                color: Color(0xFFF55A29C),
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit',
              ),
            ),
            Text(
              'รายรับรายจ่าย',
              style: TextStyle(
                fontSize: 34,
                color: Color(0xFFF55A29C),
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit',
              ),
            ),
            SizedBox(height: 20),
            // ------------------ ปุ่มเริ่มต้น ------------------
            SizedBox(
              width: 300,
              height: 60,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF55A29C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  shadowColor: Color(0xFFF55A29C),
                ),
                child: Text(
                  'เริ่มใช้งานแอปพลิเคชัน',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Kanit',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
