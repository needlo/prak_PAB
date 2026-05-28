import 'package:flutter/material.dart';

class page4 extends StatelessWidget {
  const page4({super.key});

  Widget infoProfile(
    IconData icon,
    String text,
  ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),

      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),

        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.15),
            blurRadius: 10,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Row(
        children: [
          Icon(
            icon,
            color: Colors.lightBlue,
            size: 30,
          ),

          const SizedBox(width: 20),

          Text(
            text,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff5f7fb),

      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,

              children: [
                Container(
                  height: 220,
                  width: double.infinity,

                  decoration: const BoxDecoration(
                    color: Color(0xffcfe8ff),

                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(120),
                      bottomRight: Radius.circular(120),
                    ),
                  ),

                  child: const Padding(
                    padding: EdgeInsets.only(top: 60),

                    child: Text(
                      "Profile",
                      textAlign: TextAlign.center,

                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                Positioned(
                  bottom: -60,

                  child: Container(
                    width: 120,
                    height: 120,

                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,

                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.2),
                          blurRadius: 10,
                        ),
                      ],
                    ),

                    child: const Icon(
                      Icons.person_outline,
                      size: 70,
                      color: Colors.lightBlue,
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 90),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),

              child: Column(
                children: [
                  infoProfile(
                    Icons.person_outline,
                    "Muhammad Syafiqurrohman",
                  ),

                  infoProfile(
                    Icons.phone_outlined,
                    "1462300199",
                  ),

                  infoProfile(
                    Icons.email_outlined,
                    "PBAS4@gmail.com",
                  ),

                  infoProfile(
                    Icons.location_on_outlined,
                    "Surabaya",
                  ),

                  infoProfile(
                    Icons.local_hospital_outlined,
                    "HealthHub Member",
                  ),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        type: BottomNavigationBarType.fixed,

        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,

        onTap: (index) {
          if (index == 0) {
            Navigator.pop(context);
          }
        },

        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.medical_services),
            label: "Doctor",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}