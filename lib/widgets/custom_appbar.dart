import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: () {
      context.pop();
    },
      child: Container(
        margin: const EdgeInsets.only(top: 8, right: 16),
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          border: Border.all(
              color: const Color(0xffEAEFF3),
              width: 1
          ),
          borderRadius: const BorderRadius.all(
              Radius.circular(10)
          ),
        ),
        child: const Icon(Icons.close_rounded),
      ),
    );
  }
}