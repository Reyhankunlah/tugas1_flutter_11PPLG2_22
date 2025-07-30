import 'package:flutter/material.dart';
import 'login_page.dart';
import 'custom_input.dart';
import 'user_data.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final namaController = TextEditingController();
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();
  String jenisKelamin = "Laki-laki";
  DateTime? tanggalLahir;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Halaman Register")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            CustomInput(label: "Nama", controller: namaController),
            CustomInput(
              label: "Email / Username",
              controller: usernameController,
            ),
            CustomInput(
              label: "Password",
              controller: passwordController,
              isPassword: true,
            ),

            DropdownButtonFormField<String>(
              value: jenisKelamin,
              items: ["Laki-laki", "Perempuan"].map((String val) {
                return DropdownMenuItem<String>(value: val, child: Text(val));
              }).toList(),
              onChanged: (val) {
                setState(() {
                  jenisKelamin = val!;
                });
              },
              decoration: const InputDecoration(
                labelText: "Jenis Kelamin",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 16),
            InkWell(
              onTap: () async {
                DateTime? pickedDate = await showDatePicker(
                  context: context,
                  firstDate: DateTime(1900),
                  initialDate: DateTime.now(),
                  lastDate: DateTime.now(),
                );
                if (pickedDate != null) {
                  setState(() {
                    tanggalLahir = pickedDate;
                  });
                }
              },
              child: InputDecorator(
                decoration: const InputDecoration(
                  labelText: "Tanggal Lahir",
                  border: OutlineInputBorder(),
                ),
                child: Text(
                  tanggalLahir == null
                      ? "Pilih tanggal"
                      : "${tanggalLahir!.day}/${tanggalLahir!.month}/${tanggalLahir!.year}",
                ),
              ),
            ),

            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Simpan ke user_data.dart
                UserData.simpan(
                  namaBaru: namaController.text,
                  usernameBaru: usernameController.text,
                  passwordBaru: passwordController.text,
                  jenisKelaminBaru: jenisKelamin,
                  tglLahirBaru: tanggalLahir,
                );

                // pindah activity
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginPage()),
                );

                // MessageBox
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Informasi"),
                    content: Text("Data berhasil disimpan!"),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text("OK"),
                      ),
                    ],
                  ),
                );

                // Debug print
                print("Data berhasil disimpan");
              },
              child: const Text("Daftar"),
            ),
          ],
        ),
      ),
    );
  }
}
