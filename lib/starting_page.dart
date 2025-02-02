import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartingPage extends StatefulWidget {
  const StartingPage({super.key});

  @override
  State<StartingPage> createState() => _StartingPageState();
}

class _StartingPageState extends State<StartingPage> {

  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value)
    => context.go('/authorization_page'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff3554D1),
        body: Stack(
          children: [
            Align(
                alignment: Alignment.topRight,
                child: Image.asset("assets/top_background_line.png")
            ),
            Align(
                alignment: Alignment.bottomLeft,
                child: Image.asset("assets/bottom_background_line.png")
            ),
            const Center(
                child: Text(
                  "Relife",
                  style: TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w700,
                      fontSize: 40,
                      color: Color(0xffffffff)
                  ),
                )
            ),
            const Positioned(
                bottom: 32,
                left: 0,
                right: 0,
                child: Text(
                  "Relife - приложение для сборки мусора",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontWeight: FontWeight.w500,
                    fontSize: 12,
                    color: Color(0xffffffff),
                  ),
                )
            )
          ],
        )
    );
  }
}