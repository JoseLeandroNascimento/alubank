import 'package:alubank/components/box_card.dart';
import 'package:alubank/components/color_dot.dart';
import 'package:alubank/components/content_division.dart';
import 'package:alubank/theme/theme_colors.dart';
import 'package:flutter/material.dart';

class PointCount extends StatelessWidget {
  const PointCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8.0),
            child: Text(
              "Pontos da conta",
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
          BoxCard(boxContent: _PointCountContent()),
        ],
      ),
    );
  }
}

class _PointCountContent extends StatelessWidget {
  const _PointCountContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Pontos totais:",
        ),
        Text(
          "3000",
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        const Padding(
          padding: const EdgeInsets.only(top: 8.0, bottom: 8),
          child: ContentDivision(),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Text(
            "Objetivos:",
            style: Theme.of(context).textTheme.titleMedium,
          ),
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: ColorDot(color: ThemeColors.recenteActivity["spent"]),
            ),
            Text("Entrega grátis: 15000pts")
          ],
        ),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4),
              child: ColorDot(color: ThemeColors.recenteActivity["income"]),
            ),
            Text("1 mês de streaming: 30000pts")
          ],
        )
      ],
    );
  }
}
