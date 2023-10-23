import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:projeto_teste/main.dart';
import 'package:roundcheckbox/roundcheckbox.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => LoginPageState();
}

class LoginPageState extends State<HomePage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, top: 15),
                  child: CircularProfileAvatar(
                    'Daniel',
                    borderColor: Colors.orangeAccent,
                    borderWidth: 5,
                    backgroundColor: Colors.white,
                    elevation: 2,
                    radius: 40,
                    child: Image.network(
                      "https://media.istockphoto.com/id/1327592449/vector/default-avatar-photo-placeholder-icon-grey-profile-picture-business-man.jpg?s=612x612&w=0&k=20&c=yqoos7g9jmufJhfkbQsk-mdhKEsih6Di4WZ66t_ib7I=",
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(left: 25, top: 10),
                  child: Text(
                    'Daniel Santos',
                    style: TextStyle(
                        fontSize: 20.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 25),
              child: Divider(color: Colors.grey,),
            ),
            const Center(
              child: Text(
                'Tarefas pendentes',
                style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
              ),
            ),
            Expanded(child: ListToDo(),
            ),
          ],
        ),
      ),
    );
  }
}
bool isSelected = true;

ListToDo() {
  return ListView.builder(
    padding: const EdgeInsets.all(15),
    itemCount: names.length,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
        padding: EdgeInsets.symmetric(vertical: 2.5),
        child: Container(
          width: 150,
          height: 55,
          padding: EdgeInsets.only(left: 10, right: 10),
          decoration: BoxDecoration(
            color: isSelected ? Colors.blueGrey.withOpacity(0.2) : Colors.green.withOpacity(0.2),
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(color: Colors.black, width: 3),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                names[index],
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                ),
              ),
              RoundCheckBox(
                uncheckedColor: Colors.redAccent,
                uncheckedWidget: Icon(Icons.close),
                size: 25,
                onTap: (selected) {
                  isSelected = false;
                },),
            ],),
        ),
      );
    },
  );
}

List<String> names = [
  'Reunião Daily',
  'Verificar PullRequest',
  'Verificar Jira ',
  'Reunião 11 da manhã',
  'Reunião 14 da tarde',
  "Reunião Sprint",
  "Anotação diária",
  'Reunião Daily',
  'Verificar PullRequest',
  'Verificar Jira ',
  'Reunião 11 da manhã',
  'Reunião 14 da tarde',
  "Reunião Sprint",
  "Anotação diária",
];