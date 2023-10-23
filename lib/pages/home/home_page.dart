import 'package:flutter/material.dart';
import 'package:projeto_teste/main.dart';
import 'package:user_profile_avatar/user_profile_avatar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});


  @override
  State<HomePage> createState() => LoginPageState();
}

class LoginPageState extends State<HomePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            children: <Widget>[
              Center(
                child: UserProfileAvatar(
                  avatarUrl: 'https://mundowap.com.br/wp-content/uploads/2021/08/logo-mundo-wap.png',
                  onAvatarTap: () {
                    print('Avatar Tapped..');
                  },
                  notificationCount: 10,
                  notificationBubbleTextStyle: TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                  avatarSplashColor: Colors.purple,
                  radius: 100,
                  isActivityIndicatorSmall: false,
                  avatarBorderData: AvatarBorderData(
                    borderColor: Colors.white,
                    borderWidth: 5.0,
                  ),
                )

              ),
            ],
          ),
        ),
      ),
    );
  }
}