import 'package:flutter/material.dart';
import 'package:parallax_effect/core/theme/theme.dart';

import '../../../shared/domain/entities/smart_room.dart';

class PageIndicators extends StatelessWidget {
  const PageIndicators({
    super.key,
    required this.roomSelectorNotifier,
    required this.pageNotifier,
  });

  final ValueNotifier<int> roomSelectorNotifier;
  final ValueNotifier<double> pageNotifier;

  @override
  Widget build(BuildContext context) {
    // Listen to changes in the room selector notifier.
    return ValueListenableBuilder<int>(
      valueListenable: roomSelectorNotifier,
      builder: (_, value, child) {
        // Animate the opacity of the child widget based on the value of the room selector notifier.
        return AnimatedOpacity(
          opacity: value != -1 ? 0 : 1, // Hide the child widget if the room selector is not -1.
          duration: value != -1
              ? const Duration(milliseconds: 1) // Use a short duration for hiding the widget.
              : const Duration(milliseconds: 400), // Use a longer duration for showing the widget.
          child: child,
        );
      },
      // Listen to changes in the page notifier.
      child: ValueListenableBuilder<double>(
        valueListenable: pageNotifier,
        builder: (_, value, __) {
          // Center the PageViewIndicators widget.
          return Center(
            child: PageViewIndicators(
              length: SmartRoom.fakeValues.length, // Pass the length of the fake values list.
              pageIndex: value, // Pass the current page index.
            ),
          );
        },
      ),
    );
  }

}

class PageViewIndicators extends StatelessWidget {
  const PageViewIndicators({
    required this.length,
    required this.pageIndex,
    super.key,
  });

  final int length;
  final double pageIndex;

  @override
  Widget build(BuildContext context) {
    final index = pageIndex;
    return SizedBox(
      height: 12,
      child: Stack(
        clipBehavior: Clip.none,
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              for (int i = 0; i < length; i++) ...[
                const _Dot(),
                if (i < length - 1) const SizedBox(width: 16),
              ],
            ],
          ),
          Positioned(
            left: (16 * index) + (6 * index),
            child: const _BorderDot(),
          )
        ],
      ),
    );
  }
}

class _BorderDot extends StatelessWidget {
  const _BorderDot();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 12,
      height: 12,
      child: DecoratedBox(
        decoration: BoxDecoration(
          border: Border.all(color: Colors.orange, width: 2),
          color: AppColorScheme.backgroundColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}

class _Dot extends StatelessWidget {
  const _Dot();

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 6,
      height: 6,
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: AppColorScheme.hintColor,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
