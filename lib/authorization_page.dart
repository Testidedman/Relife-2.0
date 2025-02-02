import 'package:demo/widgets/custom_appbar.dart';
import 'package:demo/widgets/custom_button.dart';
import 'package:demo/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthorizationPage extends StatefulWidget {
  const AuthorizationPage({super.key});

  @override
  State<AuthorizationPage> createState() => _AuthorizationPageState();
}

class _AuthorizationPageState extends State<AuthorizationPage> {

  final TextEditingController mailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: GestureDetector(onTap: () {
          FocusScope.of(context).unfocus();
        },
          child: Scaffold(
            backgroundColor: const Color(0xffFFFFFF),
            appBar: AppBar(
              actions: const [CustomAppbar()],
            ),
            body: Padding(
              padding: const EdgeInsets.only(
                  top: 8,
                  left: 24,
                  right: 24,
                  bottom: 33
              ),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 67),
                    Text(
                        'Войти',
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 24,
                              color: Color(0xff121F3E)
                          ),
                        )
                    ),
                    const SizedBox(height: 14),
                    Text(
                        'Добро пожаловать!',
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff96A0B5)
                          ),
                        )
                    ),
                    const SizedBox(height: 30),
                    Text(
                        'Электронная почта',
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff121F3E)
                          ),
                        )
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                      controller: mailController,
                      hintText: 'Введите электронную почту',
                      icon: const Icon(Icons.mail_outline_rounded),
                      obscureText: false,
                    ),
                    const SizedBox(height: 20),
                    Text(
                        'Пароль',
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 14,
                              color: Color(0xff121F3E)
                          ),
                        )
                    ),
                    const SizedBox(height: 12),
                    CustomTextField(
                        controller: passwordController,
                        hintText: 'Введите пароль',
                        icon: const Icon(Icons.lock_outline_rounded),
                        obscureText: true
                    ),
                    const SizedBox(height: 17),
                    Text(
                        'Забыли пароль?',
                        style: GoogleFonts.spaceGrotesk(
                          textStyle: const TextStyle(
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: Color(0xff3554D1)
                          ),
                        )
                    ),
                    const SizedBox(height: 55),
                    const CustomButton(
                        text: 'Войти',
                        textColor: Colors.white,
                        buttonColor: Color(0xff3554D1)
                    ),
                    const SizedBox(height: 20),
                    GestureDetector(onTap: () {
                      context.push('/registration_page');
                    },
                      child: const CustomButton(
                          text: 'Создать аккаунт',
                          textColor: Color(0xff121F3E),
                          buttonColor: Colors.white
                      ),
                    ),
                    const SizedBox(height: 28),
                    Center(
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: TextSpan(
                          style: GoogleFonts.spaceGrotesk(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 12,
                                color: Color(0xff96A0B5)
                            ),
                          ),
                          children: const [
                            TextSpan(
                                text: 'Нажимая “Войти” или “Создать аккаунт”, вы'
                                    '\nсоглашаетесь с нашими '
                            ),
                            TextSpan(
                              text: 'Условиями',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(
                                text: '.\nУзнайте, как мы обрабатываем ваши данные,\n'
                                    'ознакомившись с '),
                            TextSpan(
                              text: 'Политикой конфиденциальности',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                            TextSpan(text: '\nи '),
                            TextSpan(
                              text: 'Политикой в отношении файлов cookie.',
                              style: TextStyle(
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}