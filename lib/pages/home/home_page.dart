import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:projeto_teste/provider/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}



class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 25, bottom: 10),
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
                  padding: const EdgeInsets.only(left: 10, top: 15),
                  // Biblioteca importada para exibição da foto de perfil
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
              child: ListView.builder(
                padding: const EdgeInsets.all(10),
                itemCount: Provider.of<MyProvider>(context, listen: false).names.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 3),
                    child: InkWell(
                      child: Container(
                        width: 150,
                        height: 55,
                        padding: const EdgeInsets.only(left: 10, right: 10),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.blueGrey, width: 1.2),
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
                            provider.check[index]
                                ? const Icon(Icons.check, color: Colors.green,)
                                : const Icon(Icons.close, color: Colors.red,),
                          ],
                        ),
                      ),
                      onTap: () {
                        provider.check[index] = true;
                        Navigator.pushNamed(context, 'form');
                      },
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}


