import 'package:flutter/material.dart';

import '../../ui/typograph.dart';

class TwitterButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String label;
  final bool selected;
  const TwitterButton(
      {super.key, this.onTap, required this.label, required this.selected});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: switch (selected) {
          true => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: AppTypograph.buttonLabel,
                ),
                Container(
                  width: 78,
                  height: 4,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.all(Radius.circular(100)),
                  ),
                )
              ],
            ),
          false => Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  label,
                  style: AppTypograph.buttonLabel.copyWith(color: Colors.grey),
                ),
              ],
            ),
        });
  }
}
