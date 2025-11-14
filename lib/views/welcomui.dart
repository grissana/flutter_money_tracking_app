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
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // -------------------------------
            // 🔵 ซ้อนรูปภาพสองรูป
            // -------------------------------
            SizedBox(
              // width: double.infinity,
              // height: 400, // ปรับความสูงพื้นที่แสดงรูปได้
              child: Stack(
                alignment: Alignment.center, // 👈 จัดรูปให้อยู่ตรงกลางทั้งหมด
                children: [
                  Image.asset(
                    "assets/images/Group2.jpg",
                    width: MediaQuery.of(context).size.width, // 👈 ปรับอิสระ
                    height: 500,
                    fit: BoxFit.none,
                  ),
                  Image.asset(
                    "assets/images/Group1.jpg",
                    width: 200, // 👈 ปรับอิสระ
                    height: 200,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const Text(
              'Welcome to the App!',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                fontFamily: 'Kanit',
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'This is the welcome screen.',
              style: TextStyle(
                fontSize: 16,
                fontFamily: 'Kanit',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
