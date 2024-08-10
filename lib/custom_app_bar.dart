import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key, required this.scaffoldKey});

  final GlobalKey<ScaffoldState> scaffoldKey;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              const Align(
                alignment: Alignment.center,
                child: Text(
                  "메이플링",
                  style: TextStyle(fontSize: 20, fontVariations: <FontVariation>[
                    FontVariation('wght', 900),
                  ]),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    TextButton(
                      child: const Text(
                        "모든 기능 보기",
                      ),
                      onPressed: () {
                        scaffoldKey.currentState!.openDrawer();
                      },
                    ),
                    IconButton(
                      icon: const Icon(
                        Icons.account_circle,
                      ),
                      onPressed: () {
                        scaffoldKey.currentState!.openEndDrawer();
                      },
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
