import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.network(
                    'https://mundowap.com.br/wp-content/uploads/2021/08/logo-mundo-wap.png',
                    width: 120,
                    height: 120,
                  ),
                  const Center(
                    child: Text(
                      'Seja bem vindo!',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                  ),
                  const SizedBox(
                    height: 25,
                  ),
                  Container(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          controller: userController,
                          decoration: InputDecoration(
                            icon: Icon(
                              Icons.person
                            ),
                            iconColor: Colors.lightBlue,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))
                            ),
                            labelText: 'Usuário',
                          ),
                        ),
                        const SizedBox(
                          height: 25,
                        ),
                        TextFormField(
                          controller: passwordController,
                          decoration: const InputDecoration(
                            icon: Icon(
                                Icons.password
                            ),
                            iconColor: Colors.lightBlue,
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(10))
                            ),
                            labelText: 'Senha',
                          ),
                          obscureText: true,
                        ),
                        SizedBox(height: 20.0),
                        TextButton(

                            onPressed: () {
                              Navigator.pushReplacementNamed(context, 'home');
                            },
                            child: Container(
                                width: 60,
                                height: 35,
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.2),
                                    border: Border.all(color: Colors.orangeAccent, width: 1.2),
                                    borderRadius: BorderRadius.circular(8)
                                ),
                                child: Center(
                                  child: const Text('Entrar',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blue, ),
                                  ),
                                )
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      )
    );
  }
}