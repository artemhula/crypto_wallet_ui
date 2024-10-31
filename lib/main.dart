import 'package:crypto_wallet_ui/pages/main_page.dart';
import 'package:crypto_wallet_ui/widgets/navbar.dart';
import 'package:crypto_wallet_ui/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const WalletApp());
}

class WalletApp extends StatelessWidget {
  const WalletApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: darkTheme,
      home: const MainScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: NavBar(),
      body: SafeArea(child: MainPage()),
    );
  }
}
