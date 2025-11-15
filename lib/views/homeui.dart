import 'package:flutter/material.dart';

class Homeui extends StatefulWidget {
  const Homeui({super.key});

  @override
  State<Homeui> createState() => _HomeuiState();
}

class _HomeuiState extends State<Homeui> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
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
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            children: [
              // Container ตัวหลัง
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
              // Container ตัวหน้า
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
                    children: const [
                      // ข้อความตรงกลางชิดบน
                      Positioned(
                        top: 10,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Text(
                            'ยอดเงินคงเหลือ',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontFamily: 'Kanit',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      /////////////////////////////////////////////////รอรับค่าเงิน
                      Positioned(
                        top: 30,
                        left: 0,
                        right: 0,
                        child: Center(
                          child: Text(
                            'ข้อความตรงกลางชิดบน',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontFamily: 'Kanit',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      // ข้อความล่างซ้าย
                      Positioned(
                        bottom: 10,
                        left: 10,
                        child: Text(
                          'ข้อความล่างซ้าย',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontFamily: 'Kanit',
                          ),
                        ),
                      ),
                      // ข้อความล่างขวา
                      Positioned(
                        bottom: 10,
                        right: 10,
                        child: Text(
                          'ข้อความล่างขวา',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
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
          const SizedBox(height: 150),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'ยินดีต้อนรับสู่แอปติดตามรายรับรายจ่าย',
              style: TextStyle(
                fontFamily: 'Kanit',
                fontSize: 18,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
