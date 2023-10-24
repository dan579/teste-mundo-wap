import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:projeto_teste/pages/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
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
                    borderWidth: 1.5,
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
              child: Divider(
                color: Colors.grey,
              ),
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
            Expanded(
              child: ListToDo(),
            ),
          ],
        ),
      ),
    );
  }
}

bool isCompleted = false;

ListToDo() {
  return ListView.builder(
    padding: const EdgeInsets.all(10),
    itemCount: 14,
    itemBuilder: (BuildContext context, int index) {
      return Padding(
          padding: EdgeInsets.symmetric(vertical: 3),
          child: InkWell(
            child: Container(
              width: 150,
              height: 55,
              padding: EdgeInsets.only(left: 10, right: 10),
              decoration: BoxDecoration(
                color: Colors.lightBlueAccent.withOpacity(0.2),
                borderRadius: BorderRadius.circular(8.0),
                border: Border.all(color: Colors.grey, width: 1.2),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    Provider.of<MyProvider>(context, listen: false).names[index],
                    style: const TextStyle(
                        fontSize: 15.0,
                        fontFamily: 'Comfortaa',
                        fontWeight: FontWeight.normal,
                        color: Colors.black),
                  ),
                  Provider.of<MyProvider>(context, listen: false).isCompleted
                            ? Icon(Icons.check)
                            : Icon(Icons.close),
                ],
              ),
            ),
            onTap: () {
              Navigator.pushNamed(context, 'form');
            },
          ));
    },
  );
}


