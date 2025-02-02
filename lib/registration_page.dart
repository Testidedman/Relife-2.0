import 'package:demo/widgets/custom_appbar.dart';
import 'package:demo/widgets/custom_button.dart';
import 'package:demo/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {

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
                        'Регистрация',
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
                        'Привет, приятно познакомится!',
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
                        'Номер телефона',
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
                        hintText: 'Введите номер телефона',
                        icon: Image.asset(
                          'assets/rus_flag.png',
                          width: 1,
                          height: 1,
                        ),
                        obscureText: true
                    ),
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
                    const SizedBox(height: 110),
                    const CustomButton(
                        text: 'Зарегестрироваться',
                        textColor: Colors.white,
                        buttonColor: Color(0xff3554D1)
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: RichText(
                        text: TextSpan(
                          text: 'У вас уже есть аккаунт? ',
                          style: GoogleFonts.spaceGrotesk(
                            textStyle: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                color: Color(0xff96A0B5)
                            ),
                          ),
                          children: [
                            TextSpan(
                              text: 'Войти',
                              style: GoogleFonts.spaceGrotesk(
                                textStyle: const TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 14,
                                  color: Color(0xff3554D1),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        )
    );
  }
}