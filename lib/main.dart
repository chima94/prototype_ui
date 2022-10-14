import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              _Dashboard(),
              Padding(
                padding: EdgeInsets.only(left: 16),
                child: Text(
                  'Quick Services',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9901142D),
                    height: 1.8,
                  ),
                ),
              ),
              SizedBox(
                height: 16,
              ),
              _QuickService(),
              SizedBox(
                height: 16,
              ),
              _RequestCard(),
              SizedBox(
                height: 16,
              ),
              _GiftCard(),
              _Transactions(),
            ],
          ),
        ),
      ),
    );
  }
}

class _Dashboard extends StatelessWidget {
  const _Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: 150,
              child: Container(
                decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(30),
                    bottomLeft: Radius.circular(100),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: double.infinity,
              height: 150,
            )
          ],
        ),
        const Positioned(
          top: 80,
          left: 10,
          right: 10,
          child: _Card(),
        ),
        Container(
          alignment: Alignment.topCenter,
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage(
                  'assets/chima.jpeg',
                ),
              ),
              Icon(
                Icons.notifications_on_rounded,
                color: Colors.white,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _Card extends StatelessWidget {
  const _Card({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Container(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  "Account Number",
                  style: TextStyle(
                    fontSize: 15,
                    color: Color(0xFF011422D),
                  ),
                ),
                Icon(
                  Icons.more_horiz_rounded,
                )
              ],
            ),
            const Text(
              "4212423532",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Text(
                  '450,000',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w600,
                    color: Color(0xFF15141F),
                  ),
                ),
                SizedBox(
                  width: 16,
                ),
                Icon(
                  Icons.visibility_rounded,
                  color: Color(0xFF15141F),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                _DashboardButton(
                  text: 'Top up',
                  imageIcon: 'assets/top_up.png',
                ),
                SizedBox(
                  width: 8,
                ),
                _DashboardButton(
                  text: 'Send Money',
                  imageIcon: 'assets/send.png',
                ),
                SizedBox(
                  width: 8,
                ),
                _DashboardButton(
                  text: 'Refer & Earn',
                  imageIcon: 'assets/refer_earn.png',
                ),
              ],
            ),
            const SizedBox(
              height: 8,
            )
          ],
        ),
      ),
    );
  }
}

class _DashboardButton extends StatelessWidget {
  const _DashboardButton(
      {required this.text, required this.imageIcon, super.key});

  final String text;
  final String imageIcon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 99,
          height: 42,
          decoration: const BoxDecoration(
            color: Color(0xFFE1EEFE),
            borderRadius: BorderRadius.all(
              Radius.circular(
                8,
              ),
            ),
          ),
          child: Image.asset(imageIcon),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          text,
          style: const TextStyle(
            fontSize: 11,
            fontWeight: FontWeight.w500,
            color: Color(0xFF076DF3),
          ),
        )
      ],
    );
  }
}

class _QuickService extends StatelessWidget {
  const _QuickService({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: const [
            _QuickServiceCard(
              colors: [Color(0xFF076DF3), Color(0xFF0551B3)],
              text: 'Airtime',
              iconImage: 'assets/airtime_icon.png',
            ),
            _QuickServiceCard(
              colors: [Color(0xFFBF5EFD), Color(0xFF9905F8)],
              text: 'Data',
              iconImage: 'assets/data_icon.png',
            ),
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Row(
          children: const [
            _QuickServiceCard(
              colors: [Color(0xFFABF5D1), Color(0xFF17BF70)],
              text: 'Electricity',
              iconImage: 'assets/electricity_icon.png',
            ),
            _QuickServiceCard(
              colors: [Color(0xFF076DF3), Color(0xFF0551B3)],
              text: 'Betting',
              iconImage: 'assets/betting_icon.png',
            ),
          ],
        ),
      ],
    );
  }
}

class _QuickServiceCard extends StatelessWidget {
  const _QuickServiceCard({
    required this.colors,
    required this.text,
    required this.iconImage,
    super.key,
  });

  final List<Color> colors;
  final String text;
  final String iconImage;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: 165,
      height: 117,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(10)),
        gradient: LinearGradient(
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
          colors: colors,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 24, left: 18),
            width: 28,
            height: 28,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Image.asset(iconImage),
          ),
          Container(
            margin: const EdgeInsets.only(left: 18, top: 12),
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
                letterSpacing: -1,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class _RequestCard extends StatelessWidget {
  const _RequestCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(16),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        child: Container(
          padding: const EdgeInsets.all(16),
          width: double.infinity,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(8)),
            color: Colors.white,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Cards',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.5,
                    ),
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Request a Debit Card',
                    style: TextStyle(
                      fontSize: 13,
                      fontWeight: FontWeight.w500,
                      letterSpacing: -0.08,
                      color: Color(
                        0xFF076DF3,
                      ),
                    ),
                  )
                ],
              ),
              Image.asset('assets/card.png'),
            ],
          ),
        ),
      ),
    );
  }
}

class _GiftCard extends StatelessWidget {
  const _GiftCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Gift Cards',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF01142D),
                  ),
                ),
                Text(
                  'See All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF076DF3),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            const _GiftCardItems(),
          ],
        ));
  }
}

class _GiftCardItems extends StatelessWidget {
  const _GiftCardItems({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 120,
      child: ListView(
          scrollDirection: Axis.horizontal,
          children: giftCardItem.map(
            (item) {
              return Container(
                margin: const EdgeInsets.all(16),
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 25,
                      backgroundImage: AssetImage(
                        item.image,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      item.title,
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        color: Color(0xFF01142D),
                      ),
                    ),
                  ],
                ),
              );
            },
          ).toList()),
    );
  }
}

class _Transactions extends StatelessWidget {
  const _Transactions({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(left: 16, right: 16, bottom: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text(
                  'Transactions',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF01142D),
                  ),
                ),
                Text(
                  'Sell All',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF076DF3),
                  ),
                ),
              ],
            ),
            const _TransactionList(),
            const SizedBox(
              height: 16,
            )
          ],
        ));
  }
}

class _TransactionList extends StatelessWidget {
  const _TransactionList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.only(top: 16),
        width: double.infinity,
        height: 200,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8)),
          color: Colors.white,
        ),
        child: ListView(
          children: giftCardItem.map((item) {
            return ListTile(
              leading: Container(
                decoration: const BoxDecoration(
                    shape: BoxShape.circle, color: Color(0xFF076DF3)),
                child: const Padding(
                  padding: EdgeInsets.all(8),
                  child: const Text(
                    'AK',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              title: Text(
                item.name,
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w600,
                ),
              ),
              subtitle: Text(
                item.time,
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                ),
              ),
              trailing: Text(
                item.amount,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xFF64BC26),
                ),
              ),
            );
          }).toList(),
        ));
  }
}

const giftCardItem = [
  DataModel(
      image: 'assets/amazon.png',
      title: 'Amazon',
      name: "To Adrian UIUX",
      amount: "#200,000",
      time: "Today, 3:30"),
  DataModel(
      image: 'assets/google_play.png',
      title: 'Google Play',
      name: "To Adrian UIUX",
      amount: "#200,000",
      time: "Today, 3:30"),
  DataModel(
      image: 'assets/netflix.png',
      title: 'Netflix',
      name: "To Adrian UIUX",
      amount: "#200,000",
      time: "Today, 3:30"),
  DataModel(
      image: 'assets/ebay.png',
      title: 'Ebay',
      name: "To Adrian UIUX",
      amount: "#200,000",
      time: "Today, 3:30"),
];

class DataModel {
  const DataModel({
    required this.image,
    required this.title,
    required this.name,
    required this.amount,
    required this.time,
  });

  final String image;
  final String title;
  final String name;
  final String amount;
  final String time;
}
