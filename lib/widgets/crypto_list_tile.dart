import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoListTile extends StatelessWidget {
  const CryptoListTile({
    super.key,
    required this.coinName,
    required this.coinSuffix,
    required this.price,
    required this.change,
    required this.pathToIcon,
  });
  final String coinName;
  final String coinSuffix;
  final double price;
  final double change;
  final String pathToIcon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface.withOpacity(0.8),
        borderRadius: BorderRadius.circular(25.0),
      ),
      padding: const EdgeInsets.all(15),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          CircleAvatar(
            radius: 30.0,
            backgroundColor: Theme.of(context).colorScheme.surface,
            child: SvgPicture.asset(
              pathToIcon,
              color: Theme.of(context).colorScheme.onSurface,
              width: 60,
            ),
          ),
          const SizedBox(width: 16.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coinName,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
              const SizedBox(height: 5.0),
              Text(
                coinSuffix,
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
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  '\$$price',
                  style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                        color: Theme.of(context).colorScheme.onSurface,
                      ),
                ),
                const SizedBox(height: 5.0),
                Text(
                  '${change < 0 ? '' : '+'}$change%',
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: Theme.of(context)
                            .colorScheme
                            .onSurface
                            .withOpacity(0.5),
                      ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
