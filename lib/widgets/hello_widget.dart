import 'package:flutter/material.dart';

class HelloWidget extends StatelessWidget {
  const HelloWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/avatar.jpg'),
        ),
        const SizedBox(width: 15.0),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, Adam!",
              style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            Text(
              "Welcome back",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.5),
                  ),
            ),
          ],
        ),
        Expanded(
          child: Align(
            alignment: Alignment.centerRight,
            child: CircleAvatar(
              radius: 30.0,
              backgroundColor: Theme.of(context).colorScheme.surface,
              child: Image.asset(
                'assets/icons/notification.png',
                width: 25.0,
                color: Theme.of(context).colorScheme.onSurface,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
