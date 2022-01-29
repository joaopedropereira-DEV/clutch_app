import 'package:clutch_app/constants.dart';
import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  const CardItem({
    Key? key,
    required this.assetImage,
    required this.idCard,
    required this.value,
  }) : super(key: key);

  final String idCard;
  final String assetImage;
  final double value;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 320,
      padding: EdgeInsets.all(kDefaultPadding),
      margin: EdgeInsets.all(kDefaultPadding),
      decoration: BoxDecoration(
        //color: Colors.red,
        borderRadius: BorderRadius.circular(kDefaultPadding / 2),
        image: DecorationImage(
          image: AssetImage(
            assetImage,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: <Widget>[
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 5),
                child: Text(
                  idCard,
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              Text(
                "\$$value",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 27,
                  fontWeight: FontWeight.w700,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
