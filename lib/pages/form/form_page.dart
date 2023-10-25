import 'package:flutter/material.dart';


class FormPage extends StatefulWidget {
  const FormPage({super.key});


  @override
  State<FormPage> createState() => FormPageState();
}

class FormPageState extends State<FormPage> {

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController form1Controller = TextEditingController();
  final TextEditingController form2Controller = TextEditingController();

  String form1 = '';
  String form2 = '';


  @override
  Widget build(BuildContext context,) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 250),
              child: Row(
                children:  [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back_ios)
                  ),
                  const SizedBox(width: 50.0),
                  const Text(
                  'Formulário para \nrealização da tarefa',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 20.0,
                      fontFamily: 'Comfortaa',
                      fontWeight: FontWeight.normal,
                      color: Colors.black),
                ),
              ]
              ),
            ),
            Center(
              child:  SingleChildScrollView(
                physics: const AlwaysScrollableScrollPhysics(),
                child:  Form(
                  key: formKey,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      TextFormField(
                        controller: form1Controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(18))
                          ),
                          labelText: 'Informações principais',
                        ),
                        validator: (form1Value) {
                          if (form1Value!.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        onSaved: (form1Value) {
                          form1 = form1Value!;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: form2Controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                  Radius.circular(18))
                          ),
                          labelText: 'Observações adicionais',
                        ),
                        validator: (form2Value) {
                          if (form2Value!.isEmpty) {
                            return 'Este campo é obrigatório.';
                          }
                          return null;
                        },
                        onSaved: (form2Value) {
                          form2 = form2Value!;
                        },
                      ),
                      const SizedBox(height: 20.0),
                    ],
                  ),
                ),
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
            formKey.currentState!.save();
            Navigator.pushReplacementNamed(context, 'home');
          },
        ),
      ),
    );
  }
}