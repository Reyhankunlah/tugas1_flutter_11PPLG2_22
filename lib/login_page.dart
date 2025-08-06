import 'package:flutter/material.dart';
import 'package:tugas1_11pplg2/Components/custom_button.dart';
import 'package:tugas1_11pplg2/Components/custom_input.dart';
import 'package:tugas1_11pplg2/Components/custom_text.dart';
import 'register_page.dart';
import 'Components/user_data.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String statusLogin = "Status Login";

  TextEditingController txtUsername = TextEditingController();
  TextEditingController txtPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Login Page")),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomText(
              myText: "Please fill username and password below",
              myTextColor: Colors.blueAccent,
              fontSize: 18,
              fontWeight: FontWeight.bold,
              align: TextAlign.center,
            ),

            Image.asset('assets/smkrus.png'),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: CustomInput(
                label: "Username",
                controller: txtUsername,
                isNumber: false,
              ),
            ),

            CustomInput(
              label: "Password",
              controller: txtPassword,
              isPassword: true,
              isNumber: false,
            ),

            SizedBox(
              width: double.infinity,
              child: CustomButton(
                myText: "LOGIN",
                myTextColor: const Color.fromARGB(255, 64, 69, 215),
                onPressed: () {
                  print("Button Clicked");
                  if (txtUsername.text == UserData.username &&
                      txtPassword.text == UserData.password) {
                    setState(() {
                      statusLogin = "Berhasil login sebagai ${UserData.nama}";
                    });
                  } else {
                    setState(() {
                      statusLogin = "Gagal login, cek data Anda.";
                    });
                  }
                },
              ),
            ),

            Text(statusLogin),

            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RegisterPage()),
                );
              },
              child: Text(
                'Klik di sini untuk pindah',
                style: TextStyle(
                  color: Colors.blue,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
