import 'package:clutch_app/models/card.dart';
import 'package:clutch_app/models/transactions.dart';

var DUMMY_CARD = <CreditCard>[
  CreditCard(
    id: "**** 6473",
    value: 293.5,
    assetImage: "assets/images/card1.png",
  ),
  CreditCard(
    id: "**** 2004",
    value: 567.1,
    assetImage: "assets/images/card2.png",
  ),
  CreditCard(
    id: "**** 6568",
    value: 167.8,
    assetImage: "assets/images/card3.png",
  ),
  CreditCard(
    id: "**** 9071",
    value: 347.9,
    assetImage: "assets/images/card4.png",
  ),
];

var DUMMY_TRANSACTIONS = <Transactions>[
  Transactions(
    title: "Amazon",
    date: 'Mon, 20.04.21',
    hours: '12:30am',
    value: 60.2,
    image: 'assets/images/amazon.png',
  ),
  Transactions(
    title: "Uber",
    date: 'Thu, 18.02.21',
    hours: '15:00am',
    value: 76.2,
    image: 'assets/images/brand.png',
  ),
  Transactions(
    title: "Play Store",
    date: 'Wed, 04.09.21',
    hours: '10:35am',
    value: 58.2,
    image: 'assets/images/playstore.png',
  ),
  Transactions(
    title: "Spotify",
    date: 'Tue, 12.03.21',
    hours: '08:45am',
    value: 43.2,
    image: 'assets/images/spotify.png',
  ),
];
