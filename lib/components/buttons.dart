import 'package:clutch_app/constants.dart';
import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  const Buttons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 23),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            splashColor: kAccentColor,
            child: CircleAvatar(
              backgroundColor: kAccentColor,
              radius: 22,
              child: const Icon(
                Icons.refresh_rounded,
                color: Colors.black,
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          InkWell(
            onTap: () {},
            borderRadius: BorderRadius.circular(20),
            splashColor: kAccentColor,
            child: CircleAvatar(
              backgroundColor: kAccentColor,
              radius: 22,
              child: const Icon(
                Icons.credit_card,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
