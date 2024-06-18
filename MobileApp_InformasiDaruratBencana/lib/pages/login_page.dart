import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pertemuan10/pages/beranda_page.dart';
import 'package:pertemuan10/pages/register_pafe.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isObscure = true;

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  Future<void> authLogin(String username, String password) async {
    var url = "https://canihave.my.id:443/authentications";

    final response = await http.post(
      Uri.parse(url),
      headers: {
        "Content-Type": "application/json"
      },
      body: {
        "username": username,
        "password": password,
      },
    );
    log(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 152, 16, 6), // Mengubah warna latar belakang menjadi merah
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Login",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white // Menambahkan warna teks putih untuk kontras
                ),
              ),
              const SizedBox(height: 20,),
              
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // Mengubah warna kolom menjadi putih
                  border: OutlineInputBorder(),
                  labelText: "username",
                  hintText: "Masukkan Username",
                  prefixIcon: Icon(Icons.person)
                ),
              ),
          
              const SizedBox(height: 16,),
          
              TextFormField(
                controller: _passwordController,
                obscureText: isObscure,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // Mengubah warna kolom menjadi putih
                  border: const OutlineInputBorder(),
                  labelText: "Password",
                  hintText: "Masukkan Password",
                  prefixIcon: const Icon(Icons.lock),
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        isObscure = !isObscure;
                      });
                    },
                    icon: isObscure == false
                      ? const Icon(Icons.visibility)
                      : const Icon(Icons.visibility_off)
                  ),
                ),
              ),
              const SizedBox(height: 10,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return BerandaPage();
                        })
                      );
                    },
                  child: const Text("Masuk", style: TextStyle(color: Colors.black))
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Belum Punya Akun?", style: TextStyle(color: Colors.white)), // Menambahkan warna teks putih untuk kontras
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) {
                          return const RegisterPage();
                        })
                      );
                    },
                    child: const Text("Daftar"),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
