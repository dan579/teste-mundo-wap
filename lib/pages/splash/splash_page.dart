import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  SplashPageState createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: Colors.white,
        child: Stack(children: [
          Center(
              child: Image.network(
                "https://mundowap.com.br/wp-content/uploads/2021/08/logo-mundo-wap.png",
                height: 175,
                width: 175,
              ),
          ),
          Center(
            child: Padding(
              padding:
              EdgeInsets.only(top: MediaQuery.of(context).size.height / 4),
              child: DefaultTextStyle(
                style: const TextStyle(
                    fontSize: 18.0,
                    fontFamily: 'Comfortaa',
                    fontWeight: FontWeight.normal,
                    color: Colors.black),
                //Biblioteca utilizada para animação no splash
                child: AnimatedTextKit(
                  isRepeatingAnimation: false,
                  onFinished: () {
                    Navigator.pushReplacementNamed(context, 'login');
                  },
                  animatedTexts: [
                    RotateAnimatedText('Mundo Wap',
                        alignment: Alignment.center,
                        textStyle: const TextStyle(
                          fontSize: 15,
                        )),
                    RotateAnimatedText(
                      'App experimental para testes',
                      alignment: Alignment.center,
                    ),
                  ],
                  onTap: () {},
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}