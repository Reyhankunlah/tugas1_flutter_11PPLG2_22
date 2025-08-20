import 'package:flutter/material.dart';
import 'package:tugas1_11pplg2/Components/custom_text.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Profile Page")),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // === Gambar ===
              Container(
                margin: const EdgeInsets.only(bottom: 15),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    'assets/isagi.jpg',
                    width: 180,
                    height: 180,
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // Text Nama
              const CustomText(
                myText: "Muhammad Al Fa'iz",
                align: TextAlign.center,
              ),

              // Text Kelas
              const CustomText(myText: "11 PPLG 2", align: TextAlign.center),

              // Text Absens
              const CustomText(myText: "Absen : 22", align: TextAlign.center),
            ],
          ),
        ),
      ),
    );
  }
}
