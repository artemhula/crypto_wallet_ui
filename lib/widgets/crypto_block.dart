import 'dart:math';

import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CryptoBlock extends StatelessWidget {
  const CryptoBlock({
    super.key,
    required this.coinName,
    required this.coinAmount,
    required this.coinSuffix,
    required this.svgPath,
    required this.coinPrice,
    required this.coinChange,
    required this.coinData,
  });

  final String coinName;
  final double coinAmount;
  final String coinSuffix;
  final String svgPath;
  final double coinPrice;
  final double coinChange;
  final List<double> coinData;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: const ShapeBorderClipper(
        shape: ContinuousRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(75.0),
          ),
        ),
      ),
      child: Container(
        color:
            Color((Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(0.9),
        width: 190.0,
        height: 190.0,
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 100.0,
                            child: Text(
                              coinName,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyMedium!
                                  .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color:
                                        Theme.of(context).colorScheme.surface,
                                  ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                          Text(
                            '${coinAmount.toStringAsFixed(2)} $coinSuffix',
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  fontWeight: FontWeight.bold,
                                  color: Theme.of(context)
                                      .colorScheme
                                      .surface
                                      .withOpacity(0.5),
                                ),
                          ),
                        ],
                      ),
                      SvgPicture.asset(
                        svgPath,
                        width: 25,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$${coinPrice.toInt()}',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.surface,
                            ),
                      ),
                      Text(
                        '$coinChange%',
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.surface,
                            ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Expanded(
                  child: Container(
                    color: Colors.transparent,
                  ),
                ),
                Expanded(
                  child: Sparkline(
                    data: coinData,
                    useCubicSmoothing: true,
                    cubicSmoothingFactor: 0.2,
                    lineColor: Colors.black,
                    lineWidth: 1.5,
                    fillMode: FillMode.below,
                    fillColor: Colors.black.withOpacity(0.2),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.black.withOpacity(0.2),
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
