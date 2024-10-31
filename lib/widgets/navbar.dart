import 'package:crypto_wallet_ui/widgets/navbar_item.dart';
import 'package:flutter/material.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(12.0),
          topRight: Radius.circular(12.0),
        ),
        color: Theme.of(context).colorScheme.surface,
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          NavBarItem(
            isSelected: false,
            pathToImage: 'assets/icons/home.png',
          ),
          NavBarItem(
            isSelected: false,
            pathToImage: 'assets/icons/wallet.png',
          ),
          NavBarItem(
            isSelected: true,
            pathToImage: 'assets/icons/arrows.png',
          ),
          NavBarItem(
            isSelected: false,
            pathToImage: 'assets/icons/diagram.png',
          ),
          NavBarItem(
            isSelected: false,
            pathToImage: 'assets/icons/settings.png',
          ),
        ],
      ),
    );
  }
}
