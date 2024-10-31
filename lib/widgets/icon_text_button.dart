import 'package:flutter/material.dart';

class IconTextButton extends StatelessWidget {
  const IconTextButton({
    super.key,
    required this.icon,
    required this.text,
    required this.onPressed,
  });
  final IconData icon;
  final String text;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor:
            WidgetStatePropertyAll(Theme.of(context).colorScheme.onSurface),
        fixedSize: const WidgetStatePropertyAll(Size(175.0, 57.0)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            color: Theme.of(context).colorScheme.surface,
          ),
          const SizedBox(width: 5.0),
          Text(
            text,
            style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Theme.of(context).colorScheme.surface,
                ),
          ),
        ],
      ),
    );
  }
}
