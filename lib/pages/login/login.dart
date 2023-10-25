import 'package:flutter/material.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});


  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {


  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController userController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String user = '';
  String password = '';


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
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
                  Form(
                    key: formKey,
                    child:  Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextFormField(
                          controller: userController,
                          decoration: const InputDecoration(
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
                          validator: (userValue) {
                            if (userValue!.isEmpty) {
                              return 'Este campo é obrigatório.';
                            }
                            return null;
                          },
                          onSaved: (userValue) {
                            user = userValue!;
                          },
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
                          validator: (passwordValue) {
                            if (passwordValue!.isEmpty) {
                              return 'Este campo é obrigatório.';
                            }
                            return null;
                          },
                          onSaved: (passwordValue) {
                            password = passwordValue!;
                          },
                        ),
                        const SizedBox(height: 50.0),
                        InkWell(
                          child: Container(
                              height: 45,
                              width: 150,
                              decoration:BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  border: Border.all(color: Colors.blueGrey, width: 1.2),
                                  borderRadius: BorderRadius.circular(8)
                              ),
                              child: const Center(
                                child: Text('Entrar',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: 15.0,
                                      fontFamily: 'Comfortaa',
                                      fontWeight: FontWeight.normal,
                                      color: Colors.blue),
                                ),
                              )
                          ),
                          onTap: () {
                              if (formKey.currentState!.validate()) {
                                formKey.currentState!.save();
                                Navigator.pushReplacementNamed(context, 'home');
                              }
                          },
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