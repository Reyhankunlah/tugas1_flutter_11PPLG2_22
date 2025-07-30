import 'package:flutter/material.dart';
import 'register_page.dart';
import 'user_data.dart';

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
            Text(
              "Please fill username and password below",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blueAccent,
                fontWeight: FontWeight.bold,
              ),
            ),

            Image.asset('assets/smkrus.png'),

            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: txtUsername,
                decoration: const InputDecoration(
                  labelText: "Username",
                  border: OutlineInputBorder(),
                ),
              ),
            ),

            TextField(
              controller: txtPassword,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Password",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
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
                child: Text("LOGIN"),
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
