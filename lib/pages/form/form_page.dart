

import 'package:flutter/material.dart';
import 'package:projeto_teste/pages/home/home_page.dart';
import 'package:projeto_teste/pages/home/home_page.dart';
import 'package:projeto_teste/pages/provider.dart';
import 'package:provider/provider.dart';


class FormPage extends StatefulWidget {
  const FormPage({super.key});


  @override
  State<FormPage> createState() => FormPageState();
}

class FormPageState extends State<FormPage> {

  final TextEditingController form1Controller = TextEditingController();
  final TextEditingController form2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(top: 25, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(
                          Icons.arrow_back_ios
                      ),
                    ),
                    const Text(
                      'Perfil de Usuário',
                      style: TextStyle(
                          fontSize: 20.0,
                          fontFamily: 'Comfortaa',
                          fontWeight: FontWeight.normal,
                          color: Colors.black),
                    ),
                    Image.network(
                      "https://mundowap.com.br/wp-content/uploads/2021/08/logo-mundo-wap.png",
                      height: 50,
                      width: 50,
                    ),
                  ],
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TextFormField(
                      controller: form1Controller,
                      decoration: InputDecoration(
                        labelText: 'Formulário 1',
                      ),
                    ),
                    TextFormField(
                      controller: form2Controller,
                      decoration: InputDecoration(
                        labelText: 'Formulário 2',
                      ),
                      obscureText: true,
                    ),
                    SizedBox(height: 20.0),
                    TextButton(
                      onPressed: () {
                        final myProvider = Provider.of<MyProvider>(context, listen: false);
                        myProvider.setCheck();
                        Navigator.pushReplacementNamed(context, 'home');
                      },
                      child: Text('Login',
                        style: TextStyle(
                            fontSize: 15.0,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.normal,
                            color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}