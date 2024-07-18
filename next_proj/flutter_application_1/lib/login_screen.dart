import 'package:flutter/material.dart';
import 'package:flutter_application_1/function.dart';
import 'package:flutter_application_1/linkden_home_screen.dart';

class LoginScreen extends StatelessWidget {
// Suggested code may be subject to a license. Learn more: ~LicenseLog:1491380250.
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    String hardcodedUserName = "user";
    String hardcodedPassword = "password";

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3225984761.
    final TextEditingController userNameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

// Suggested code may be subject to a license. Learn more: ~LicenseLog:3350831775.
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.network(
            "https://icones.pro/wp-content/uploads/2021/03/linkedin-icone.png",
            height: 150,
            width: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
              bottom: 10,
            ),
            child: TextField(
              controller: userNameController,
              decoration: const InputDecoration(hintText: "Username"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 30,
              right: 30,
            ),
            child: TextField(
              controller: passwordController,
              decoration: const InputDecoration(hintText: "Password"),
            ),
          ),
          MaterialButton(
              color: Colors.blue,
              onPressed: () async {
                if (userNameController.text == hardcodedUserName &&
                    passwordController.text == hardcodedPassword) {
                  await storingBoolData(true);
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const LinkdenHomeScreen(),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Row(
                        children: [
                          Icon(Icons.warning),
                          Text("Invalid username and password")
                        ],
                      ),
                    ),
                  );

                
                }
              },
              child: const Text(
                "Login",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
    );
  }
}
