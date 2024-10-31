import 'package:crypto_wallet_ui/widgets/crypto_block.dart';
import 'package:crypto_wallet_ui/widgets/hello_widget.dart';
import 'package:crypto_wallet_ui/widgets/icon_text_button.dart';
import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HelloWidget(),
          const SizedBox(height: 30.0),
          Text(
            'Current value',
            style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                  color:
                      Theme.of(context).colorScheme.onSurface.withOpacity(0.5),
                ),
          ),
          const SizedBox(height: 5.0),
          Text(
            '\$56,987.00',
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 55.0,
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          const SizedBox(height: 10.0),
          Row(
            children: [
              Text(
                '0xA23B4F75...B623EefC74F10',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      color: Theme.of(context)
                          .colorScheme
                          .onSurface
                          .withOpacity(0.5),
                    ),
              ),
              const SizedBox(width: 7.0),
              const Icon(Icons.copy_rounded),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconTextButton(
                icon: Icons.arrow_outward_rounded,
                text: 'Withdraw',
                onPressed: () {},
              ),
              IconTextButton(
                icon: Icons.add_rounded,
                text: 'Deposit',
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 25.0),
          Text(
            'Favourites',
            style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                  color: Theme.of(context).colorScheme.onSurface,
                ),
          ),
          const SizedBox(height: 10.0),
          const CryptoBlock(),
        ],
      ),
    );
  }
}
