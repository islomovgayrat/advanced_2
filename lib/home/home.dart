import 'package:flutter/material.dart';
import 'package:easy_localization/easy_localization.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("st_welcome").tr(),
                const SizedBox(width: 10),
                const Text("st_to").tr(),
                const SizedBox(width: 10),
                const Text("st_uzbekistan").tr(),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.setLocale(const Locale('en', 'US'));
                    },
                    child: Container(
                      color: Colors.amber,
                      child: const Center(child: Text('English')),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.setLocale(const Locale('ru', 'RU'));
                    },
                    child: Container(
                      color: Colors.blue,
                      child: const Center(child: Text('Russian')),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.setLocale(const Locale('uz', 'UZ'));
                    },
                    child: Container(
                      color: Colors.red,
                      child: const Center(child: Text('Uzbek')),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      context.setLocale(const Locale('fr', 'FR'));
                    },
                    child: Container(
                      color: Colors.green,
                      child: const Center(child: Text('French')),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
