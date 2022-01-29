import 'package:clutch_app/components/app_bar.dart';
import 'package:clutch_app/components/buttons.dart';
import 'package:clutch_app/components/card_item.dart';
import 'package:clutch_app/components/indicator.dart';
import 'package:clutch_app/components/list_transactions.dart';
import 'package:clutch_app/constants.dart';
import 'package:clutch_app/data/dummy_data.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final PageController _pageController = PageController();

  int _currentPage = 0;

  onChanged(int index) {
    setState(() {
      _currentPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(kDefaultPadding),
            child: Column(
              children: <Widget>[
                const TopAppBar(),
                SizedBox(
                  height: 245,
                  child: PageView.builder(
                    scrollDirection: Axis.horizontal,
                    controller: _pageController,
                    onPageChanged: onChanged,
                    itemCount: DUMMY_CARD.length,
                    itemBuilder: (context, index) => CardItem(
                      idCard: DUMMY_CARD[index].id,
                      value: DUMMY_CARD[index].value,
                      assetImage: DUMMY_CARD[index].assetImage,
                    ),
                  ),
                ),
                Indicator(currentPage: _currentPage),
                const Buttons(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const <Widget>[
                    Text(
                      "Transactions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      "Today, 04.20.21",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 17,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Column(
                  children: List.generate(
                    DUMMY_TRANSACTIONS.length,
                    (index) => ListTransactions(
                      title: DUMMY_TRANSACTIONS[index].title,
                      date: DUMMY_TRANSACTIONS[index].date,
                      hours: DUMMY_TRANSACTIONS[index].hours,
                      image: DUMMY_TRANSACTIONS[index].image,
                      value: DUMMY_TRANSACTIONS[index].value,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
