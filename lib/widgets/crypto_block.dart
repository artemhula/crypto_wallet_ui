import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

class CryptoBlock extends StatelessWidget {
  const CryptoBlock({super.key});

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
        color: const Color.fromRGBO(255, 252, 159, 1.0),
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
                              'Binance Coin',
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
                            '56.8 BNB',
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
                        'assets/icons/bnb.svg',
                        width: 25,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$1,460',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Theme.of(context).colorScheme.surface,
                            ),
                      ),
                      Text(
                        '2.44%',
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
            Sparkline(
              data: [50, 52,48,55,54,57,55,60,59,60,55,50,53,52,53,48,50,52,55,52,60,58,68,73],
              useCubicSmoothing: true,
              cubicSmoothingFactor: 0.2,
              lineColor: Colors.black,
              lineWidth: 2.0,
              fillMode: FillMode.below,
              fillColor: Colors.black.withOpacity(0.2),
            ),
          ],
        ),
      ),
    );
  }
}
