import 'package:crypto_wallet_ui/data.dart';
import 'package:crypto_wallet_ui/widgets/crypto_block.dart';
import 'package:crypto_wallet_ui/widgets/crypto_list_tile.dart';
import 'package:crypto_wallet_ui/widgets/hello_widget.dart';
import 'package:crypto_wallet_ui/widgets/icon_text_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0, right: 25.0, top: 30.0),
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HelloWidget(),
            const SizedBox(height: 30.0),
            Text(
              'Current value',
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Theme.of(context)
                        .colorScheme
                        .onSurface
                        .withOpacity(0.5),
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
            const SizedBox(height: 15.0),
            SizedBox(
              height: 190,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return CryptoBlock(
                    coinName: coins[index]['name'],
                    coinAmount: coins[index]['amount'],
                    coinSuffix: coins[index]['suffix'],
                    svgPath: coins[index]['svgPath'],
                    coinPrice: coins[index]['price'],
                    coinChange: coins[index]['change'],
                    coinData: coins[index]['data'],
                  );
                },
                separatorBuilder: (context, index) {
                  return const SizedBox(width: 10.0);
                },
                itemCount: coins.length,
              ),
            ),
            const SizedBox(height: 25.0),
            Text(
              'Assets',
              style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface,
                  ),
            ),
            const SizedBox(height: 15.0),
            ListView.separated(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              itemBuilder: (context, index) {
                return CryptoListTile(
                  coinName: data[index]['coinName'],
                  coinSuffix: data[index]['coinSuffix'],
                  price: data[index]['price'],
                  change: data[index]['change'],
                  pathToIcon: data[index]['pathToIcon'],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 10.0);
              },
              itemCount: data.length,
            ),
            const SizedBox(height: 20.0),
          ],
        ),
      ),
    );
  }
}

const List<Map> data = [
  {
    'coinName': 'Bitcoin',
    'coinSuffix': 'BTC',
    'price': 56987.00,
    'change': 3.67,
    'pathToIcon': 'assets/icons/btc.svg',
  },
  {
    'coinName': 'Litecoin',
    'coinSuffix': 'LTC',
    'price': 1987.71,
    'change': 0.67,
    'pathToIcon': 'assets/icons/ltc.svg',
  },
  {
    'coinName': 'Matic',
    'coinSuffix': 'POL',
    'price': 0.987,
    'change': -0.67,
    'pathToIcon': 'assets/icons/pol.svg',
  },
];
