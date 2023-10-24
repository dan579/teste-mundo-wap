import 'package:flutter/material.dart';
import 'package:parent_child_checkbox/parent_child_checkbox.dart';
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 150),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: (){
                      Navigator.pop(context);
                    },
                    icon: const Icon(
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
            Center(
              child: Column(
              children: <Widget>[
                SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  child: Column(
                    children: [
                      ParentChildCheckbox(
                        parent: const Text('Fluxo Login'),
                        parentCheckboxColor: Colors.green,
                        childrenCheckboxColor: Colors.blueAccent,
                        children: const [
                          Text('Tela Login'),
                          Text('Tela Home'),
                          Text('Tela Formulário de taferas'),
                          Text('Tela Splash (Opcional)'),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          TextFormField(
                            controller: form1Controller,
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(
                                      Radius.circular(18))
                              ),
                              labelText: 'Observação',
                            ),
                          ),
                          const SizedBox(height: 20.0),
                        ],
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
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 25),
        child:  InkWell(
          child: Container(
              height: 45,
              width: 150,
              decoration:BoxDecoration(
                  color: Colors.grey.withOpacity(0.2),
                  border: Border.all(color: Colors.blueGrey, width: 1.2),
                  borderRadius: BorderRadius.circular(8)
              ),
              child: const Center(
                child: Text('Finalizar Tarefa',
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
            Provider.of<MyProvider>(context, listen: false).isCompleted = true;
            Navigator.pushReplacementNamed(context, 'home');
          },
        ),
      ),
    );
  }
}