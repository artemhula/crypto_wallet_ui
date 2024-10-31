import 'package:flutter/material.dart';

class NavBarItem extends StatelessWidget {
  const NavBarItem(
      {super.key, required this.isSelected, required this.pathToImage});

  final bool isSelected;
  final String pathToImage;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: isSelected
          ? Theme.of(context).colorScheme.primary
          : Colors.transparent,
      radius: 25.0,
      child: Image.asset(
        pathToImage,
        width: 25.0,
        color: isSelected
            ? Theme.of(context).colorScheme.surface
            : Theme.of(context).colorScheme.onSurface,
      ),
    );
  }
}
