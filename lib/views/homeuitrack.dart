// ignore_for_file: avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_money_tracking_app/views/homeuiin.dart';
import 'homeuiout.dart';

class Homeuitrack extends StatefulWidget {
  const Homeuitrack({super.key});

  @override
  State<Homeuitrack> createState() => _HomeuitrackState();
}

class _HomeuitrackState extends State<Homeuitrack> {
  int selectedIndex = 0;

  // Controller สำหรับ TextField
  final TextEditingController detailController = TextEditingController();
  final TextEditingController amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      // ----------------------------------------------------------
      // APPBAR
      // ----------------------------------------------------------
      appBar: AppBar(
        backgroundColor: const Color(0xFF429690),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Grissana Tianlua',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.white,
              ),
            ),
            ClipOval(
              child: Image.asset(
                'assets/images/logo.jpg',
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
            ),
          ],
        ),
        centerTitle: false,
      ),

      // ----------------------------------------------------------
      // BOTTOM NAVIGATION
      // ----------------------------------------------------------
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color(0xFF2A7C76),
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });

          if (index == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Homeuiin(),
              ),
            );
          } else if (index == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Homeuitrack(),
              ),
            );
          } else if (index == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => const Homeuiout(),
              ),
            );
          }
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
        iconSize: 28,
        selectedFontSize: 14,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "หน้าแรก",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: "รายการ",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "โปรไฟล์",
          ),
        ],
      ),

      // ----------------------------------------------------------
      // BODY
      // ----------------------------------------------------------
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  width: double.infinity,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Color(0xFF429690),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 20,
                  right: 20,
                  child: Container(
                    height: 180,
                    decoration: const BoxDecoration(
                      color: Color(0xFF2A7C76),
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Stack(
                      children: [
                        const Positioned(
                          top: 10,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text(
                              'ยอดเงินคงเหลือ',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        const Positioned(
                          top: 35,
                          left: 0,
                          right: 0,
                          child: Center(
                            child: Text(
                              '2,500.00',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontFamily: 'Kanit',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          left: 20,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_downward,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 55,
                          left: 65,
                          child: Text(
                            'ยอดเงินเข้ารวม',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Kanit',
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 15,
                          left: 20,
                          child: Text(
                            '5,700.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Kanit',
                            ),
                          ),
                        ),
                        Positioned(
                          bottom: 50,
                          right: 20,
                          child: Container(
                            width: 35,
                            height: 35,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.3),
                              shape: BoxShape.circle,
                            ),
                            child: const Icon(
                              Icons.arrow_upward,
                              color: Colors.white,
                              size: 20,
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 55,
                          right: 65,
                          child: Text(
                            'ยอดเงินออกรวม',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontFamily: 'Kanit',
                            ),
                          ),
                        ),
                        const Positioned(
                          bottom: 15,
                          right: 20,
                          child: Text(
                            '2,200.00',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Kanit',
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 120),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'เงินเข้า/เงินออก',
                style: TextStyle(
                  fontFamily: 'Kanit',
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
