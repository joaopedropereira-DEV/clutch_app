import 'package:clutch_app/constants.dart';
import 'package:clutch_app/data/dummy_data.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  const Indicator({
    Key? key,
    required int currentPage,
  })  : _currentPage = currentPage,
        super(key: key);

  final int _currentPage;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        DUMMY_CARD.length,
        (index) => Padding(
          padding: EdgeInsets.all(kDefaultPadding / 3),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 700),
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: (_currentPage == index)
                  ? Colors.white
                  : Colors.white.withOpacity(0.5),
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
    );
  }
}
