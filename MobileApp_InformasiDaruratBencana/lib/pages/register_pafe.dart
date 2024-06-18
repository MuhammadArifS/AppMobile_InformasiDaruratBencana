import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  bool isObscure = true;
  
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 163, 30, 21),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text(
                "Register",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Menambahkan warna teks putih untuk kontras
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
                  prefixIcon: Icon(Icons.person),
                ),
              ),
          
              const SizedBox(height: 16,),

              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white, // Mengubah warna kolom menjadi putih
                  border: OutlineInputBorder(),
                  labelText: "E-mail",
                  hintText: "Masukkan E-mail",
                  prefixIcon: Icon(Icons.email),
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
                      : const Icon(Icons.visibility_off),
                  ),
                ),
              ),
              const SizedBox(height: 16,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () { },
                   child: const Text("Daftar", style: TextStyle(color: Colors.black)),
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Sudah punya Akun?",
                    style: TextStyle(color: Colors.white), // Menambahkan warna teks putih untuk kontras
                  ),
                  TextButton(
                    child: const Text("Login"), // Mengubah warna teks menjadi hitam
                    onPressed: () {
                      Navigator.pop(context);
                    },
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
