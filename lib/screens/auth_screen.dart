import "package:flutter/material.dart";
import "package:gymapp/_core/app_colors.dart";
import "package:gymapp/components/decoration_auth_inputs.dart";

class AuthScreen extends StatefulWidget {
  const AuthScreen({super.key});

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  bool wantLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  AppColors.topGradientBlue,
                  AppColors.bottomGradientBlue
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Form(
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Image.asset(
                        "assets/images/logo.png",
                        height: 128,
                        color: Colors.white,
                      ),
                      const Text(
                        "GymApp",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 48,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      TextFormField(
                        decoration: getAuthInputDecoration("E-mail"),
                      ),
                      const SizedBox(height: 8),
                      TextFormField(
                        decoration: getAuthInputDecoration("Senha"),
                        obscureText: true,
                      ),
                      const SizedBox(height: 8),
                      Visibility(
                        visible: !wantLogin,
                        child: Column(
                          children: [
                            TextFormField(
                              decoration:
                                  getAuthInputDecoration("Confirmar Senha"),
                              obscureText: true,
                            ),
                            const SizedBox(height: 8),
                            TextFormField(
                              decoration: getAuthInputDecoration("Nome"),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Text((wantLogin) ? "Entrar" : "Cadastrar"),
                      ),
                      const Divider(),
                      TextButton(
                        onPressed: () {
                          setState(() {
                            wantLogin = !wantLogin;
                          });
                        },
                        child: Text((wantLogin)
                            ? "Ainda não tem uma conta?"
                            : "Já tem uma conta? Entre"),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
