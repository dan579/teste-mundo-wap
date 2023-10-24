

import 'package:flutter/material.dart';
import 'package:parent_child_checkbox/parent_child_checkbox.dart';
import 'package:projeto_teste/pages/home/home_page.dart';
import 'package:projeto_teste/pages/home/home_page.dart';
import 'package:projeto_teste/provider/provider.dart';
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 25, bottom: 30),
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
                        'Formulário para \nrealização da tarefa',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 20.0,
                            fontFamily: 'Comfortaa',
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                    ],
                  ),
                ),
                SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      ParentChildCheckbox(
                        parent: const Text('Parent 1'),
                        children: [
                          Text('Children 1.1'),
                          Text('Children 1.2'),
                          Text('Children 1.3'),
                          Text('Children 1.4'),
                        ],
                        parentCheckboxColor: Colors.orange,
                        childrenCheckboxColor: Colors.red,
                      ),
                      ParentChildCheckbox(
                        parent: Text('Parent 2'),
                        children: [
                          Text('Children 2.1'),
                          Text('Children 2.2'),
                          Text('Children 2.3'),
                          Text('Children 2.4'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            TextFormField(
                              controller: form1Controller,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(18))
                                ),
                                labelText: 'Observação',
                              ),
                            ),
                            SizedBox(height: 20.0),
                            TextButton(
                              onPressed: () {
                                final myProvider = Provider.of<MyProvider>(context, listen: false);
                                myProvider.setCheck();
                                Navigator.pushReplacementNamed(context, 'home');
                              },
                              child: Text('Finalizar Tarefa',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}