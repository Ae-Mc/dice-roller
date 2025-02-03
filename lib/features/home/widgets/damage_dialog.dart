import 'package:assorted_layout_widgets/assorted_layout_widgets.dart';
import 'package:flutter/material.dart';

class DamageDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final minDimension = constraints.biggest.shortestSide * 0.6;

        return Center(
          child: SizedBox.square(
            dimension: minDimension,
            child: Card(
              child: Center(
                child: ListView(
                  padding: const Pad(all: 16),
                  shrinkWrap: true,
                  children: [
                    const Text.rich(
                      TextSpan(
                        text: 'Попадание(15,20)',
                        children: [
                          TextSpan(
                            text: '+5',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '=20'),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      '999',
                      style: Theme.of(context)
                          .textTheme
                          .displayLarge
                          ?.copyWith(fontSize: 120),
                      textAlign: TextAlign.center,
                    ),
                    const Text.rich(
                      TextSpan(
                        text:
                            '5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5+5',
                        children: [
                          TextSpan(
                            text: '+5',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: '=999'),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
